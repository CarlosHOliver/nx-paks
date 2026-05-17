# ================================
# NX-PAKS
# Main Menu
# ================================

# -------- CONFIG --------

$Host.UI.RawUI.WindowTitle = "NX-PAKS"

# -------- FUNCTIONS --------

function Show-Logo {

    Clear-Host

    Write-Host ""
    Write-Host "███╗   ██╗██╗  ██╗      ██████╗  █████╗ ██╗  ██╗" -ForegroundColor Green
    Write-Host "████╗  ██║╚██╗██╔╝      ██╔══██╗██╔══██╗██║ ██╔╝" -ForegroundColor Green
    Write-Host "██╔██╗ ██║ ╚███╔╝ ████╗ ██████╔╝███████║█████╔╝ " -ForegroundColor Green
    Write-Host "██║╚██╗██║ ██╔██╗ ╚═══╝ ██╔═══╝ ██╔══██║██╔═██╗ " -ForegroundColor Green
    Write-Host "██║ ╚████║██╔╝ ██╗      ██║     ██║  ██║██║  ██╗" -ForegroundColor Green
    Write-Host "╚═╝  ╚═══╝╚═╝  ╚═╝      ╚═╝     ╚═╝  ╚═╝╚═╝  ╚═╝" -ForegroundColor Green

    Write-Host ""
    Write-Host " Nintendo Switch SD Manager" -ForegroundColor DarkGray
    Write-Host ""
}

function Pause-App {
    Write-Host ""
    Read-Host "Pressione ENTER para continuar"
}

function Show-MainMenu {

    do {

        Show-Logo

        Write-Host "╔════════════════════════════════════╗" -ForegroundColor DarkGray
        Write-Host "║            MENU PRINCIPAL         ║" -ForegroundColor DarkGray
        Write-Host "╠════════════════════════════════════╣" -ForegroundColor DarkGray

        Write-Host "║ [1] Instalar Pack do Zero         ║" -ForegroundColor Cyan
        Write-Host "║ [2] Atualizar/Reinstalar Pack     ║" -ForegroundColor Yellow
        Write-Host "║ [3] Ferramentas                   ║" -ForegroundColor Magenta
        Write-Host "║ [4] Download Firmware             ║" -ForegroundColor Blue
        Write-Host "║ [5] Backup                        ║" -ForegroundColor Green
        Write-Host "║ [6] Configurações                 ║" -ForegroundColor Gray

        Write-Host "╠════════════════════════════════════╣" -ForegroundColor DarkGray
        Write-Host "║ [0] Sair                          ║" -ForegroundColor Red
        Write-Host "╚════════════════════════════════════╝" -ForegroundColor DarkGray

        Write-Host ""

        $option = Read-Host "Selecione uma opção"

        switch ($option) {

            "1" {

                Clear-Host
                Write-Host ""
                Write-Host "[ INSTALAR PACK DO ZERO ]" -ForegroundColor Cyan
                Write-Host ""

                # TODO:
                # Detectar SD
                # Formatar FAT32 64K
                # Download Pack
                # Extrair arquivos
                # Gerar instruções emuMMC

                Pause-App
            }

            "2" {

                Clear-Host
                Write-Host ""
                Write-Host "[ ATUALIZAR / REINSTALAR PACK ]" -ForegroundColor Yellow
                Write-Host ""

                # TODO:
                # Detectar pack atual
                # Backup parcial
                # Preservar Nintendo/emuMMC
                # Limpeza
                # Reinstalação

                Pause-App
            }

            "3" {

                Clear-Host
                Write-Host ""
                Write-Host "[ FERRAMENTAS ]" -ForegroundColor Magenta
                Write-Host ""

                # TODO:
                # Integridade SD
                # Backup
                # IMG SD
                # Verificações

                Pause-App
            }

            "4" {

                Clear-Host
                Write-Host ""
                Write-Host "[ DOWNLOAD FIRMWARE ]" -ForegroundColor Blue
                Write-Host ""

                # TODO:
                # Download firmware
                # Extrair em /firmware

                Pause-App
            }

            "5" {

                Clear-Host
                Write-Host ""
                Write-Host "[ BACKUP ]" -ForegroundColor Green
                Write-Host ""

                # TODO:
                # Backup ZIP
                # Backup completo
                # IMG SD

                Pause-App
            }

            "6" {

                Clear-Host
                Write-Host ""
                Write-Host "[ CONFIGURAÇÕES ]" -ForegroundColor Gray
                Write-Host ""

                # TODO:
                # Paths
                # Temp
                # Logs
                # Idioma

                Pause-App
            }

            "0" {

                Write-Host ""
                Write-Host "Saindo..." -ForegroundColor Red
                Start-Sleep 1
            }

            default {

                Write-Host ""
                Write-Host "Opção inválida!" -ForegroundColor Red
                Start-Sleep 1
            }
        }

    } while ($option -ne "0")
}

# -------- START --------

Show-MainMenu
