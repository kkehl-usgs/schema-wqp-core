-- Setup the huc12nometa data table from the raw data in hu12_nhdplusv2
drop table if exists wqp.huc12nometa;
create table wqp.huc12nometa as select hn.huc_12, hn.wkb_geometry from wqp.hu12_nhdplusv2 hn;
alter table wqp.huc12nometa rename column wkb_geometry to geometry;
alter table wqp.huc12nometa rename column huc_12 to huc12;
create index huc12nometa_geom on wqp.huc12nometa using gist (geometry) with (fillfactor='100');
drop table if exists wqp.hu12_nhdplusv2;
