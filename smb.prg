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

        IF(key(_left))
            x=x-1;
            flags = 1;
        END

        IF(key(_right))
            x=x+1;
            flags = 0;
        END


        FRAME;
    END

END