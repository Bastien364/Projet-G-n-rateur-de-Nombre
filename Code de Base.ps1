# Petit générateur de nombre aléatoire

# Fonction qui redemande tant que l'utilisateur ne tape pas un vrai nombre
function Lire-Nombre($question) {
    $reponse = Read-Host $question
    # ^-?\d+$ veut dire : un signe moins facultatif, puis uniquement des chiffres
    while ($reponse -notmatch '^-?\d+$') {
        Write-Host "Ce n'est pas un nombre valide, réessayez."
        $reponse = Read-Host $question
    }
    return [int]$reponse
}

Write-Host "=== Générateur de nombre ==="

$min = Lire-Nombre "Nombre minimum"
$max = Lire-Nombre "Nombre maximum"

# Si le minimum est plus grand que le maximum, on les échange
if ($min -gt $max) {
    Write-Host "Le minimum est plus grand que le maximum, je les inverse."
    $temp = $min
    $min = $max
    $max = $temp
}
# Demander combien de nombres générer (au moins 1)
$quantite = Lire-Nombre "Combien de nombres voulez-vous générer"
while ($quantite -lt 1) {
    Write-Host "Il faut au moins 1 nombre."
    $quantite = Lire-Nombre "Combien de nombres voulez-vous générer"
}

# Générer et afficher chaque nombre
for ($i = 1; $i -le $quantite; $i++) {
    # Get-Random exclut la borne max, donc on ajoute 1
    $nombre = Get-Random -Minimum $min -Maximum ($max + 1)
    Write-Host "Nombre $i : $nombre"
}
