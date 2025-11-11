# scripts/run_pipeline.ps1
Write-Host "Iniciando pipeline RedScan..."

# Mover a la carpeta raíz del proyecto (una carpeta arriba de /scripts)
Set-Location "$PSScriptRoot\.."

# Crear carpeta de salida si no existe
if (-not (Test-Path "examples")) {
    New-Item -ItemType Directory -Path "examples" | Out-Null
}

# Crear ID único de ejecución
$RUN_ID = Get-Date -Format "yyyyMMdd_HHmmss"

function Log-Event {
    param(
        [string]$Module,
        [string]$Level,
        [string]$Event,
        [string]$Details
    )
    $timestamp = Get-Date -Format "yyyy-MM-ddTHH:mm:ss"
    $entry = @{
        timestamp = $timestamp
        run_id    = $RUN_ID
        module    = $Module
        level     = $Level
        event     = $Event
        details   = $Details
    } | ConvertTo-Json -Depth 5
    Add-Content -Path "examples/logs.jsonl" -Value $entry
}

# 1) Ejecutar escaneo (genera examples/scan_results.json)
Write-Host "Ejecutando escaneo..."
python "src/run_scan.py"
if ($LASTEXITCODE -eq 0) {
    Log-Event -Module "scanner" -Level "INFO" -Event "Scan completed" -Details "Resultados guardados en examples/scan_results.json"
} else {
    Log-Event -Module "scanner" -Level "ERROR" -Event "Scan failed" -Details "Error al ejecutar run_scan.py"
    exit 1
}

# 2) Ejecutar análisis con IA
Write-Host "Analizando resultados con IA..."
python "src/ai_summary.py" "examples/scan_results.json"
if ($LASTEXITCODE -eq 0) {
    Log-Event -Module "ai_summary" -Level "INFO" -Event "AI analysis done" -Details "Resumen generado"
} else {
    Log-Event -Module "ai_summary" -Level "ERROR" -Event "AI analysis failed" -Details "Error al ejecutar ai_summary.py"
    exit 1
}

# 3) Log final
Log-Event -Module "pipeline" -Level "INFO" -Event "Pipeline completed" -Details "Ejecución completa sin errores"
Write-Host "Pipeline completado."
