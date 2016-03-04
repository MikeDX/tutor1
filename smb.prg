PROGRAM smb;

BEGIN

    load_fpg("smb.fpg");

    player();

    LOOP
        FRAME;
    END

END

PROCESS player()

PRIVATE

animcount=0;

BEGIN

    x=160;
    y=100;
    graph=1;

    LOOP

        animcount=animcount+1;

        IF(animcount>3)
            animcount =0;

            graph=graph+1;

            IF(graph==5)
                graph=2;
            END
        END

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