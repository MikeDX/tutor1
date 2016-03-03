PROGRAM smb;

BEGIN

    load_fpg("smb.fpg");

    player();

    LOOP
        FRAME;
    END

END

PROCESS player()

BEGIN

    x=160;
    y=100;
    graph=1;

    LOOP
        FRAME;
    END

END