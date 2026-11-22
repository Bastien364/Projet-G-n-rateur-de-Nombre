# Petit générateur de nombre aléatoire

Write-Host "=== Générateur de nombre ==="

$min = [int](Read-Host "Nombre minimum")
$max = [int](Read-Host "Nombre maximum")

# Si le minimum est plus grand que le maximum, on les échange
if ($min -gt $max) {
    Write-Host "Le minimum est plus grand que le maximum, je les inverse."
    $temp = $min
    $min = $max
    $max = $temp
}

# Get-Random exclut la borne max, donc on ajoute 1
$nombre = Get-Random -Minimum $min -Maximum ($max + 1)

Write-Host "Votre nombre est : $nombre"
