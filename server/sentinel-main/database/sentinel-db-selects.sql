
SELECT * FROM sentinel.situation;
SELECT * FROM sentinel.address;
SELECT * FROM sentinel.report;
SELECT * FROM sentinel.report_has_situation;
SELECT * FROM sentinel.offense;
SELECT * FROM sentinel.situation_has_offense;


SELECT * FROM sentinel.report_has_situation WHERE report_id = 2;

SELECT * FROM sentinel.address WHERE street = '111' and number = '11' and addition = '111' and postcode = '111' and city = '' and province = 'Noord Brabant';

SELECT r.* FROM sentinel.report r, sentinel.address a WHERE a.id = 2 and r.address_id = a.id;