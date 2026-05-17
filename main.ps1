# ==========================================
# NX-PAKS
# Nintendo Switch SD Manager
# ==========================================

# ---------- TERMINAL FIX ----------

[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
$OutputEncoding = [System.Text.Encoding]::UTF8
chcp 65001 > $null

$Host.UI.RawUI.WindowTitle = "NX-PAKS"

# ---------- FUNCTIONS ----------

function Show-Header {

    Clear-Host

    Write-Host "========================================" -ForegroundColor DarkGray
    Write-Host "                NX-PAKS                " -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor DarkGray

    Write-Host ""
    Write-Host " Nintendo Switch SD Manager" -ForegroundColor Gray
    Write-Host ""
}

function Pause-App {

    Write-Host ""
    Read-Host "Pressione ENTER para continuar"
}

function Show-MainMenu {

    do {

        Show-Header

        Write-Host "+--------------------------------------+" -ForegroundColor DarkGray
        Write-Host "|           MENU PRINCIPAL             |" -ForegroundColor DarkGray
        Write-Host "+--------------------------------------+" -ForegroundColor DarkGray

        Write-Host "| [1] Instalar Pack do Zero            |" -ForegroundColor Cyan
        Write-Host "| [2] Atualizar/Reinstalar Pack        |" -ForegroundColor Yellow
        Write-Host "| [3] Ferramentas                      |" -ForegroundColor Magenta
        Write-Host "| [4] Download Firmware                |" -ForegroundColor Blue
        Write-Host "| [5] Backup                           |" -ForegroundColor Green
        Write-Host "| [6] Configuracoes                    |" -ForegroundColor Gray

        Write-Host "+--------------------------------------+" -ForegroundColor DarkGray
        Write-Host "| [0] Sair                             |" -ForegroundColor Red
        Write-Host "+--------------------------------------+" -ForegroundColor DarkGray

        Write-Host ""

        $option = Read-Host "Selecione uma opção"

        switch ($option) {

            "1" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Cyan
                Write-Host "       INSTALAR PACK DO ZERO            " -ForegroundColor Cyan
                Write-Host "========================================" -ForegroundColor Cyan

                Write-Host ""
                Write-Host "[TODO] Detectar SD"
                Write-Host "[TODO] Formatar FAT32 64K"
                Write-Host "[TODO] Download do pack"
                Write-Host "[TODO] Extrair arquivos"
                Write-Host "[TODO] Gerar instrucoes emuMMC"

                Pause-App
            }

            "2" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Yellow
                Write-Host "     ATUALIZAR / REINSTALAR PACK        " -ForegroundColor Yellow
                Write-Host "========================================" -ForegroundColor Yellow

                Write-Host ""
                Write-Host "[TODO] Detectar pack instalado"
                Write-Host "[TODO] Backup parcial"
                Write-Host "[TODO] Preservar Nintendo/emuMMC"
                Write-Host "[TODO] Limpeza segura"
                Write-Host "[TODO] Reinstalar pack"

                Pause-App
            }

            "3" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Magenta
                Write-Host "              FERRAMENTAS               " -ForegroundColor Magenta
                Write-Host "========================================" -ForegroundColor Magenta

                Write-Host ""
                Write-Host "[TODO] Verificar integridade SD"
                Write-Host "[TODO] Criar IMG do SD"
                Write-Host "[TODO] Ferramentas auxiliares"

                Pause-App
            }

            "4" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Blue
                Write-Host "          DOWNLOAD FIRMWARE             " -ForegroundColor Blue
                Write-Host "========================================" -ForegroundColor Blue

                Write-Host ""
                Write-Host "[TODO] Download firmware"
                Write-Host "[TODO] Extrair em /firmware"

                Pause-App
            }

            "5" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Green
                Write-Host "                 BACKUP                 " -ForegroundColor Green
                Write-Host "========================================" -ForegroundColor Green

                Write-Host ""
                Write-Host "[TODO] Backup ZIP"
                Write-Host "[TODO] Backup completo SD"
                Write-Host "[TODO] IMG do SD"

                Pause-App
            }

            "6" {

                Clear-Host

                Write-Host "========================================" -ForegroundColor Gray
                Write-Host "             CONFIGURACOES              " -ForegroundColor Gray
                Write-Host "========================================" -ForegroundColor Gray

                Write-Host ""
                Write-Host "[TODO] Diretorios"
                Write-Host "[TODO] Logs"
                Write-Host "[TODO] Idioma"

                Pause-App
            }

            "0" {

                Write-Host ""
                Write-Host "Saindo..." -ForegroundColor Red
                Start-Sleep 1
            }

            default {

                Write-Host ""
                Write-Host "Opcao invalida!" -ForegroundColor Red
                Start-Sleep 1
            }
        }

    } while ($option -ne "0")
}

# ---------- START ----------

Show-MainMenu
