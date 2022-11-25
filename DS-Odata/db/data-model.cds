namespace ds.api.cards;

/**
    Q 코드
    취득가
    curr
    장부가
    장부가curr
    App. Date
 */
entity DS01 {
    key qcode : String(5);
    cost1 : Decimal(15,10);
    curr1 : String(3);
    cost2 : Integer64;
    curr2 : String(3);
    date1 : Date;
}