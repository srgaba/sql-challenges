SELECT MIN((
    SELECT MIN(ABS(SD.distance - SDS.distance)) FROM sapling_distances SDS
    WHERE SDS.id != SD.id
)) as shortest_distance  FROM sapling_distances AS SD
