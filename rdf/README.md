# added rdf transformation to Linked Open Data standard of data for SN:

rdf/Schultypen.ttl - school types (almost the same as school type entity)
rdf/Schulen.ttl - schools (and other entries listed in the source)

# Bedeutung der Bestandteile der 7-stelligen id:

* (Ziffer 1) immer 4
* (Ziffer 2) zuständige Regionalstelle: 1 - BZ, 2 - C, 3 - DD, 4 - L, 5 - Z
* (Ziffer 3) Schultyp
* (Ziffer 4-7) eigentliche ident

# Laden der Daten in einen lokalen Virtuoso-Store:

sparql clear graph <http://jedeschule.de/HGG-Datenextrakt/> ; 
sparql create silent graph <http://jedeschule.de/HGG-Datenextrakt/> ;
DB.DBA.TTLP_MT (file_to_string_output('/home/graebe/git/LD/schulscraper-data/rdf/Schulen.ttl'),'http://jedeschule.de/HGG-Datenextrakt/');

sparql clear graph <http://leipzig-data.de/Data/LeipzigerSchulen/> ; 
sparql create silent graph <http://leipzig-data.de/Data/LeipzigerSchulen/> ;
DB.DBA.TTLP_MT (file_to_string_output('/home/graebe/git/LD/schulscraper-data/rdf/LeipzigerSchulen.ttl'),'http://leipzig-data.de/Data/LeipzigerSchulen/');

