// DO NOT EDIT
// This file is automatically generated!
// $ smg.shen rtl/SMG/seq.smg
//
// https://github.com/sam-falvo/smg

module Sequencer(
	input 	xt3,
	input 	xt2,
	input 	xt1,
	input 	xt0,
	input [31:0]	ir,
	input 	dack_i,
	input 	iack_i,
	input 	ft0,
	input 	rst,
	output 	dwe_o,
	output 	ddat_rdat,
	output 	rdat_ddat,
	output 	dsiz_fn3,
	output 	dstb_1,
	output 	dcyc_1,
	output 	dadr_alu,
	output 	ia_pc,
	output 	sx32_en,
	output 	pc_alu,
	output 	xt3_o,
	output 	and_en,
	output 	rsh_en,
	output 	xor_en,
	output 	ltu_en,
	output 	lts_en,
	output 	invB_en,
	output 	cflag_i,
	output 	lsh_en,
	output 	sum_en,
	output 	alub_imm20u,
	output 	alub_imm12s,
	output 	alub_imm12i,
	output 	alub_rdat,
	output 	alua_ia,
	output 	alua_0,
	output 	alua_rdat,
	output 	rwe_o,
	output 	rdat_pc,
	output 	rdat_alu,
	output 	ra_ird,
	output 	ra_ir2,
	output 	ra_ir1,
	output 	xt2_o,
	output 	xt1_o,
	output 	jammed_o,
	output 	xt0_o,
	output 	ir_idat,
	output 	pc_pcPlus4,
	output 	isiz_2,
	output 	iadr_pc,
	output 	pc_mbvec,
	output 	ft0_o
);
wire  isStore;
wire  isLoad;
wire  isLuiAuipc;
wire  useAlu2;
wire  useAlu;
wire  fn3_is_111;
wire  fn3_is_110;
wire  fn3_is_101;
wire  fn3_is_100;
wire  fn3_is_011;
wire  fn3_is_010;
wire  fn3_is_001;
wire  fn3_is_000;
wire  isJalr;
wire  isOpR;
wire  isOpI;
wire R1391 = (|rst) ; 
wire R1392 = ~(|rst) & (|ft0) & ~(|iack_i) ; 
wire R1393 = ~(|rst) & (|ft0) & (|iack_i) ; 
wire R1394 = ~(|rst) & ~(|ft0) & ~(|xt0) & ~(|xt1) & ~(|xt2) & ~(|xt3) ; 
wire R1395 = ( ir[14:12] == 3'b000 ) ; 
wire R1396 = ( ir[14:12] == 3'b001 ) ; 
wire R1397 = ( ir[14:12] == 3'b010 ) ; 
wire R1398 = ( ir[14:12] == 3'b011 ) ; 
wire R1399 = ( ir[14:12] == 3'b100 ) ; 
wire R1400 = ( ir[14:12] == 3'b101 ) ; 
wire R1401 = ( ir[14:12] == 3'b110 ) ; 
wire R1402 = ( ir[14:12] == 3'b111 ) ; 
wire R1403 = ( ir[6:4] == 7'b001 ) & ( ir[2:0] == 3'b011 ) ; 
wire R1404 = ( ir[6:4] == 7'b011 ) & ( ir[2:0] == 3'b011 ) ; 
wire R1405 = ~(|rst) & (|xt0) & (|isOpI) ; 
wire R1406 = ~(|rst) & (|xt1) & (|isOpI) ; 
wire R1407 = ~(|rst) & (|xt2) & (|isOpI) ; 
wire R1408 = (|useAlu) & (|fn3_is_000) ; 
wire R1409 = (|useAlu) & (|fn3_is_001) ; 
wire R1410 = (|useAlu) & (|fn3_is_010) ; 
wire R1411 = (|useAlu) & (|fn3_is_011) ; 
wire R1412 = (|useAlu) & (|fn3_is_100) ; 
wire R1413 = (|useAlu) & (|fn3_is_101) & ~(|ir[30]) ; 
wire R1414 = (|useAlu) & (|fn3_is_101) & (|ir[30]) ; 
wire R1415 = (|useAlu) & (|fn3_is_110) ; 
wire R1416 = (|useAlu) & (|fn3_is_111) ; 
wire R1417 = (|useAlu) & (|ir[3]) ; 
wire R1418 = ~(|rst) & (|xt0) & (|isOpR) ; 
wire R1419 = ~(|rst) & (|xt1) & (|isOpR) ; 
wire R1420 = ~(|rst) & (|xt2) & (|isOpR) ; 
wire R1421 = ~(|rst) & (|xt3) & (|isOpR) ; 
wire R1422 = (|useAlu2) & (|fn3_is_000) & ~(|ir[30]) ; 
wire R1423 = (|useAlu2) & (|fn3_is_000) & (|ir[30]) ; 
wire R1424 = (|useAlu2) & (|fn3_is_001) ; 
wire R1425 = (|useAlu2) & (|fn3_is_010) ; 
wire R1426 = (|useAlu2) & (|fn3_is_011) ; 
wire R1427 = (|useAlu2) & (|fn3_is_100) ; 
wire R1428 = (|useAlu2) & (|fn3_is_101) & ~(|ir[30]) ; 
wire R1429 = (|useAlu2) & (|fn3_is_101) & (|ir[30]) ; 
wire R1430 = (|useAlu2) & (|fn3_is_110) ; 
wire R1431 = (|useAlu2) & (|fn3_is_111) ; 
wire R1432 = (|useAlu2) & (|ir[3]) ; 
wire R1433 = ( ir[6:0] == 7'b1100111 ) ; 
wire R1434 = ~(|rst) & (|xt0) & (|isJalr) ; 
wire R1435 = ~(|rst) & (|xt1) & (|isJalr) ; 
wire R1436 = ~(|rst) & (|xt2) & (|isJalr) ; 
wire R1437 = ~(|rst) & (|xt3) & (|isJalr) ; 
wire R1438 = ~(|ir[6]) & ( ir[4:0] == 5'b10111 ) ; 
wire R1439 = ~(|rst) & (|xt0) & (|isLuiAuipc) ; 
wire R1440 = ~(|rst) & (|xt0) & (|isLuiAuipc) & (|ir[5]) ; 
wire R1441 = ~(|rst) & (|xt0) & (|isLuiAuipc) & ~(|ir[5]) ; 
wire R1442 = ~(|rst) & (|xt1) & (|isLuiAuipc) ; 
wire R1443 = ( ir[6:0] == 7'b0000011 ) ; 
wire R1444 = ( ir[6:0] == 7'b0100011 ) ; 
wire R1445 = ~(|rst) & (|xt0) & (|isLoad) ; 
wire R1446 = ~(|rst) & (|xt1) & (|isLoad) ; 
wire R1447 = ~(|rst) & (|xt2) & (|isLoad) & ~(|dack_i) ; 
wire R1448 = ~(|rst) & (|xt2) & (|isLoad) & (|dack_i) ; 
wire R1449 = ~(|rst) & (|xt0) & (|isStore) ; 
wire R1450 = ~(|rst) & (|xt1) & (|isStore) ; 
wire R1451 = ~(|rst) & (|xt2) & (|isStore) & ~(|dack_i) ; 
wire R1452 = ~(|rst) & (|xt2) & (|isStore) & (|dack_i) ; 
wire  out1453 = R1391 ? 1 : 0 ; 
wire  out1454 = R1391 ? 1 : 0 ; 
wire  out1455 = R1392 ? 1 : 0 ; 
wire  out1456 = R1392 ? 1 : 0 ; 
wire  out1457 = R1392 ? 1 : 0 ; 
wire  out1458 = R1393 ? 1 : 0 ; 
wire  out1459 = R1393 ? 1 : 0 ; 
wire  out1460 = R1393 ? 1 : 0 ; 
wire  out1461 = R1393 ? 1 : 0 ; 
wire  out1462 = R1393 ? 1 : 0 ; 
wire  out1463 = R1393 ? 1 : 0 ; 
wire  out1464 = R1394 ? 1 : 0 ; 
wire  out1465 = R1395 ? 1 : 0 ; 
wire  out1466 = R1396 ? 1 : 0 ; 
wire  out1467 = R1397 ? 1 : 0 ; 
wire  out1468 = R1398 ? 1 : 0 ; 
wire  out1469 = R1399 ? 1 : 0 ; 
wire  out1470 = R1400 ? 1 : 0 ; 
wire  out1471 = R1401 ? 1 : 0 ; 
wire  out1472 = R1402 ? 1 : 0 ; 
wire  out1473 = R1403 ? 1 : 0 ; 
wire  out1474 = R1404 ? 1 : 0 ; 
wire  out1475 = R1405 ? 1 : 0 ; 
wire  out1476 = R1405 ? 1 : 0 ; 
wire  out1477 = R1406 ? 1 : 0 ; 
wire  out1478 = R1406 ? 1 : 0 ; 
wire  out1479 = R1406 ? 1 : 0 ; 
wire  out1480 = R1407 ? 1 : 0 ; 
wire  out1481 = R1407 ? 1 : 0 ; 
wire  out1482 = R1407 ? 1 : 0 ; 
wire  out1483 = R1407 ? 1 : 0 ; 
wire  out1484 = R1407 ? 1 : 0 ; 
wire  out1485 = R1408 ? 1 : 0 ; 
wire  out1486 = R1409 ? 1 : 0 ; 
wire  out1487 = R1410 ? 1 : 0 ; 
wire  out1488 = R1410 ? 1 : 0 ; 
wire  out1489 = R1410 ? 1 : 0 ; 
wire  out1490 = R1411 ? 1 : 0 ; 
wire  out1491 = R1411 ? 1 : 0 ; 
wire  out1492 = R1411 ? 1 : 0 ; 
wire  out1493 = R1412 ? 1 : 0 ; 
wire  out1494 = R1413 ? 1 : 0 ; 
wire  out1495 = R1414 ? 1 : 0 ; 
wire  out1496 = R1414 ? 1 : 0 ; 
wire  out1497 = R1415 ? 1 : 0 ; 
wire  out1498 = R1415 ? 1 : 0 ; 
wire  out1499 = R1416 ? 1 : 0 ; 
wire  out1500 = R1417 ? 1 : 0 ; 
wire  out1501 = R1418 ? 1 : 0 ; 
wire  out1502 = R1418 ? 1 : 0 ; 
wire  out1503 = R1419 ? 1 : 0 ; 
wire  out1504 = R1419 ? 1 : 0 ; 
wire  out1505 = R1419 ? 1 : 0 ; 
wire  out1506 = R1420 ? 1 : 0 ; 
wire  out1507 = R1420 ? 1 : 0 ; 
wire  out1508 = R1421 ? 1 : 0 ; 
wire  out1509 = R1421 ? 1 : 0 ; 
wire  out1510 = R1421 ? 1 : 0 ; 
wire  out1511 = R1421 ? 1 : 0 ; 
wire  out1512 = R1421 ? 1 : 0 ; 
wire  out1513 = R1422 ? 1 : 0 ; 
wire  out1514 = R1423 ? 1 : 0 ; 
wire  out1515 = R1423 ? 1 : 0 ; 
wire  out1516 = R1423 ? 1 : 0 ; 
wire  out1517 = R1424 ? 1 : 0 ; 
wire  out1518 = R1425 ? 1 : 0 ; 
wire  out1519 = R1425 ? 1 : 0 ; 
wire  out1520 = R1425 ? 1 : 0 ; 
wire  out1521 = R1426 ? 1 : 0 ; 
wire  out1522 = R1426 ? 1 : 0 ; 
wire  out1523 = R1426 ? 1 : 0 ; 
wire  out1524 = R1427 ? 1 : 0 ; 
wire  out1525 = R1428 ? 1 : 0 ; 
wire  out1526 = R1429 ? 1 : 0 ; 
wire  out1527 = R1429 ? 1 : 0 ; 
wire  out1528 = R1430 ? 1 : 0 ; 
wire  out1529 = R1430 ? 1 : 0 ; 
wire  out1530 = R1431 ? 1 : 0 ; 
wire  out1531 = R1432 ? 1 : 0 ; 
wire  out1532 = R1433 ? 1 : 0 ; 
wire  out1533 = R1434 ? 1 : 0 ; 
wire  out1534 = R1434 ? 1 : 0 ; 
wire  out1535 = R1434 ? 1 : 0 ; 
wire  out1536 = R1434 ? 1 : 0 ; 
wire  out1537 = R1435 ? 1 : 0 ; 
wire  out1538 = R1435 ? 1 : 0 ; 
wire  out1539 = R1436 ? 1 : 0 ; 
wire  out1540 = R1436 ? 1 : 0 ; 
wire  out1541 = R1436 ? 1 : 0 ; 
wire  out1542 = R1437 ? 1 : 0 ; 
wire  out1543 = R1437 ? 1 : 0 ; 
wire  out1544 = R1437 ? 1 : 0 ; 
wire  out1545 = R1438 ? 1 : 0 ; 
wire  out1546 = R1439 ? 1 : 0 ; 
wire  out1547 = R1439 ? 1 : 0 ; 
wire  out1548 = R1440 ? 1 : 0 ; 
wire  out1549 = R1441 ? 1 : 0 ; 
wire  out1550 = R1442 ? 1 : 0 ; 
wire  out1551 = R1442 ? 1 : 0 ; 
wire  out1552 = R1442 ? 1 : 0 ; 
wire  out1553 = R1442 ? 1 : 0 ; 
wire  out1554 = R1442 ? 1 : 0 ; 
wire  out1555 = R1443 ? 1 : 0 ; 
wire  out1556 = R1444 ? 1 : 0 ; 
wire  out1557 = R1445 ? 1 : 0 ; 
wire  out1558 = R1445 ? 1 : 0 ; 
wire  out1559 = R1446 ? 1 : 0 ; 
wire  out1560 = R1446 ? 1 : 0 ; 
wire  out1561 = R1446 ? 1 : 0 ; 
wire  out1562 = R1447 ? 1 : 0 ; 
wire  out1563 = R1447 ? 1 : 0 ; 
wire  out1564 = R1447 ? 1 : 0 ; 
wire  out1565 = R1447 ? 1 : 0 ; 
wire  out1566 = R1447 ? 1 : 0 ; 
wire  out1567 = R1447 ? 1 : 0 ; 
wire  out1568 = R1448 ? 1 : 0 ; 
wire  out1569 = R1448 ? 1 : 0 ; 
wire  out1570 = R1448 ? 1 : 0 ; 
wire  out1571 = R1448 ? 1 : 0 ; 
wire  out1572 = R1448 ? 1 : 0 ; 
wire  out1573 = R1448 ? 1 : 0 ; 
wire  out1574 = R1448 ? 1 : 0 ; 
wire  out1575 = R1448 ? 1 : 0 ; 
wire  out1576 = R1448 ? 1 : 0 ; 
wire  out1577 = R1449 ? 1 : 0 ; 
wire  out1578 = R1449 ? 1 : 0 ; 
wire  out1579 = R1450 ? 1 : 0 ; 
wire  out1580 = R1450 ? 1 : 0 ; 
wire  out1581 = R1450 ? 1 : 0 ; 
wire  out1582 = R1450 ? 1 : 0 ; 
wire  out1583 = R1451 ? 1 : 0 ; 
wire  out1584 = R1451 ? 1 : 0 ; 
wire  out1585 = R1451 ? 1 : 0 ; 
wire  out1586 = R1451 ? 1 : 0 ; 
wire  out1587 = R1451 ? 1 : 0 ; 
wire  out1588 = R1451 ? 1 : 0 ; 
wire  out1589 = R1451 ? 1 : 0 ; 
wire  out1590 = R1451 ? 1 : 0 ; 
wire  out1591 = R1451 ? 1 : 0 ; 
wire  out1592 = R1452 ? 1 : 0 ; 
wire  out1593 = R1452 ? 1 : 0 ; 
wire  out1594 = R1452 ? 1 : 0 ; 
wire  out1595 = R1452 ? 1 : 0 ; 
wire  out1596 = R1452 ? 1 : 0 ; 
wire  out1597 = R1452 ? 1 : 0 ; 
wire  out1598 = R1452 ? 1 : 0 ; 
wire  out1599 = R1452 ? 1 : 0 ; 
assign dsiz_fn3 = out1596|out1588|out1572|out1567;
assign isLoad = out1555;
assign invB_en = out1522|out1519|out1516|out1491|out1488;
assign ia_pc = out1461;
assign cflag_i = out1527|out1521|out1518|out1515|out1496|out1490|out1487;
assign and_en = out1530|out1528|out1499|out1497;
assign isJalr = out1532;
assign isLuiAuipc = out1545;
assign alua_ia = out1549;
assign fn3_is_000 = out1465;
assign fn3_is_001 = out1466;
assign fn3_is_010 = out1467;
assign fn3_is_100 = out1469;
assign fn3_is_011 = out1468;
assign fn3_is_101 = out1470;
assign fn3_is_110 = out1471;
assign fn3_is_111 = out1472;
assign iadr_pc = out1458|out1455;
assign useAlu = out1483;
assign ra_ird = out1573|out1550|out1534|out1508|out1480;
assign dwe_o = out1598|out1591;
assign jammed_o = out1464;
assign pc_alu = out1543;
assign dadr_alu = out1593|out1585|out1569|out1564;
assign pc_mbvec = out1454;
assign ir_idat = out1462;
assign lsh_en = out1517|out1486;
assign rdat_pc = out1535;
assign rdat_ddat = out1575;
assign ddat_rdat = out1597|out1589;
assign rsh_en = out1526|out1525|out1495|out1494;
assign rwe_o = out1574|out1552|out1536|out1510|out1482;
assign alua_rdat = out1580|out1560|out1540|out1504|out1478;
assign alub_imm12i = out1561|out1541|out1479;
assign sx32_en = out1531|out1500;
assign alub_rdat = out1507;
assign rdat_alu = out1551|out1509|out1481;
assign lts_en = out1520|out1489;
assign isStore = out1556;
assign sum_en = out1592|out1584|out1568|out1563|out1553|out1544|out1514|out1513|out1485;
assign ltu_en = out1523|out1492;
assign xor_en = out1529|out1524|out1498|out1493;
assign alub_imm12s = out1581;
assign alub_imm20u = out1547;
assign alua_0 = out1548;
assign dcyc_1 = out1594|out1586|out1570|out1565;
assign ft0_o = out1599|out1576|out1554|out1542|out1512|out1484|out1457|out1453;
assign useAlu2 = out1511;
assign dstb_1 = out1595|out1587|out1571|out1566;
assign ra_ir1 = out1578|out1558|out1538|out1502|out1476;
assign ra_ir2 = out1590|out1582|out1505;
assign isOpI = out1473;
assign pc_pcPlus4 = out1460;
assign xt0_o = out1463;
assign xt1_o = out1577|out1557|out1546|out1533|out1501|out1475;
assign isiz_2 = out1459|out1456;
assign xt2_o = out1583|out1579|out1562|out1559|out1537|out1503|out1477;
assign isOpR = out1474;
assign xt3_o = out1539|out1506;
endmodule
