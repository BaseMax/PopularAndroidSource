.class public Lat/gadermaier/argon2/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->parseArguments([Ljava/lang/String;)Lat/gadermaier/argon2/Argon2;

    move-result-object p0

    .line 13
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Ljava/io/Console;->readPassword()[C

    move-result-object v0

    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Ljava/util/Scanner;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Lat/gadermaier/argon2/Argon2;->setPassword([C)Lat/gadermaier/argon2/Argon2;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lat/gadermaier/argon2/Argon2;->hash()V

    .line 27
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->printSummary()V

    return-void
.end method
