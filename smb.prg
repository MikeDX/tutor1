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

animcount = 0;
jumping = FALSE;
jump_offset = 0;
jump_power = 8;

BEGIN

    x = 160;
    y = 100;
    graph = 1;

    LOOP

        animcount = animcount + 1;

        IF ( animcount > 3 )
            animcount = 0;

            graph = graph + 1;

            IF( graph == 5 )
                graph = 2;
            END
        END

        IF ( KEY(_LEFT) )
            x = x - 1;
            flags = 1;
        END

        IF ( KEY(_RIGHT) )
            x = x + 1;
            flags = 0;
        END

        IF ( KEY(_SPACE) && jumping == FALSE )

            jumping = TRUE;
            jump_offset = -jump_power;

        END

        IF ( jumping == TRUE )

            y = y + jump_offset;
            jump_offset = jump_offset + 1;

            graph = 5;

            IF ( jump_offset > jump_power )
                jumping = FALSE;
                graph = 1;
            END


        END

        FRAME;
    END

END