-- R1 : Productions réalisées par parcelle avec quantités et dates (triées par nom de parcelle)
SELECT 
    pa.nomParcelle,
    pr.nomProduction,
    pr.quantiteProduite,
    pr.uniteProduction,
    pr.dateDebut,
    pr.dateFin
FROM Parcelles pa
JOIN Productions pr ON pa.idParcelle = pr.idParcelle
ORDER BY pa.nomParcelle ASC;

-- R2 : Rendement de chaque production par parcelle (Quantité / Surface)
SELECT 
    pa.nomParcelle,
    pr.nomProduction,
    (pr.quantiteProduite / pa.surface) AS rendement,
    CONCAT(pr.uniteProduction, '/ha') AS uniteRendement
FROM Parcelles pa
JOIN Productions pr ON pa.idParcelle = pr.idParcelle;

-- R3 : Noms et quantités d'engrais épandus par parcelle et date
SELECT 
    pa.nomParcelle,
    e.dateEpandage,
    eng.nomEngrais,
    e.quantiteEpandue,
    eng.uniteEpandage
FROM Epandre e
JOIN Parcelles pa ON e.idParcelle = pa.idParcelle
JOIN Engrais eng ON e.idEngrais = eng.idEngrais;

-- R4 : Apports en N, P, K par parcelle entre le 1er février et le 31 mai 2023
SELECT 
    pa.nomParcelle,
    SUM(e.quantiteEpandue * eng.proportionN) AS apportTotalN,
    SUM(e.quantiteEpandue * eng.proportionP) AS apportTotalP,
    SUM(e.quantiteEpandue * eng.proportionK) AS apportTotalK
FROM Epandre e
JOIN Parcelles pa ON e.idParcelle = pa.idParcelle
JOIN Engrais eng ON e.idEngrais = eng.idEngrais
WHERE e.dateEpandage BETWEEN '2023-02-01' AND '2023-05-31'
GROUP BY pa.idParcelle, pa.nomParcelle;
