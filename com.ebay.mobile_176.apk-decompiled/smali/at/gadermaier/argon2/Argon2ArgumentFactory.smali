.class public Lat/gadermaier/argon2/Argon2ArgumentFactory;
.super Ljava/lang/Object;
.source "Argon2ArgumentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bailOut()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static bailOut(Ljava/lang/String;)V
    .locals 1

    .line 155
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->bailOut()V

    return-void
.end method

.method private static buildOptions()Lorg/apache/commons/cli/Options;
    .locals 8

    .line 93
    new-instance v0, Lorg/apache/commons/cli/Options;

    invoke-direct {v0}, Lorg/apache/commons/cli/Options;-><init>()V

    .line 96
    new-instance v1, Lorg/apache/commons/cli/OptionGroup;

    invoke-direct {v1}, Lorg/apache/commons/cli/OptionGroup;-><init>()V

    .line 98
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "i"

    const-string v4, "Use Argon2i (this is the default)"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 99
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 100
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "d"

    const-string v4, "Use Argon2d instead of Argon2i"

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 102
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "id"

    const-string v4, "Use Argon2id instead of Argon2i"

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 103
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 105
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;

    .line 108
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string/jumbo v2, "t"

    const-string v3, "Sets the number of iterations to N (default = 3)"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "N"

    .line 109
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 110
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Class;)V

    .line 111
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 113
    new-instance v1, Lorg/apache/commons/cli/OptionGroup;

    invoke-direct {v1}, Lorg/apache/commons/cli/OptionGroup;-><init>()V

    .line 115
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "m"

    const-string v7, "Sets the memory usage of 2^N KiB (default 12)"

    invoke-direct {v2, v3, v6, v4, v7}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v3, "N"

    .line 116
    invoke-virtual {v2, v3}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 117
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Class;)V

    .line 118
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 120
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "k"

    const-string v7, "Sets the memory usage of N KiB (default 2^12)"

    invoke-direct {v2, v3, v6, v4, v7}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v3, "N"

    .line 121
    invoke-virtual {v2, v3}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 122
    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Class;)V

    .line 123
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 125
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;

    .line 128
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string/jumbo v2, "p"

    const-string v3, "Sets parallelism to N (default 1)"

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "N"

    .line 129
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 130
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Class;)V

    .line 131
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 133
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "l"

    const-string v3, "Sets hash output length to N bytes (default 32)"

    invoke-direct {v1, v2, v6, v4, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "N"

    .line 134
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setArgName(Ljava/lang/String;)V

    .line 135
    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/Option;->setType(Ljava/lang/Class;)V

    .line 136
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    .line 139
    new-instance v1, Lorg/apache/commons/cli/OptionGroup;

    invoke-direct {v1}, Lorg/apache/commons/cli/OptionGroup;-><init>()V

    .line 141
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string v3, "e"

    const-string v4, "Output only encoded hash"

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 142
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 143
    new-instance v2, Lorg/apache/commons/cli/Option;

    const-string/jumbo v3, "r"

    const-string v4, "Output only the raw bytes of the hash"

    invoke-direct {v2, v3, v6, v5, v4}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 144
    invoke-virtual {v1, v2}, Lorg/apache/commons/cli/OptionGroup;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/OptionGroup;

    .line 146
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOptionGroup(Lorg/apache/commons/cli/OptionGroup;)Lorg/apache/commons/cli/Options;

    .line 148
    new-instance v1, Lorg/apache/commons/cli/Option;

    const-string v2, "h"

    const-string v3, "Print usage"

    invoke-direct {v1, v2, v6, v5, v3}, Lorg/apache/commons/cli/Option;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    .line 149
    invoke-virtual {v0, v1}, Lorg/apache/commons/cli/Options;->addOption(Lorg/apache/commons/cli/Option;)Lorg/apache/commons/cli/Options;

    return-object v0
.end method

.method private static createArgon2(Lorg/apache/commons/cli/CommandLine;)Lat/gadermaier/argon2/Argon2;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/cli/ParseException;
        }
    .end annotation

    .line 37
    new-instance v0, Lat/gadermaier/argon2/Argon2;

    invoke-direct {v0}, Lat/gadermaier/argon2/Argon2;-><init>()V

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/cli/CommandLine;->getArgs()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 40
    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setSalt(Ljava/lang/String;)Lat/gadermaier/argon2/Argon2;

    const-string v1, "h"

    .line 42
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string/jumbo v1, "t"

    .line 45
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "t"

    .line 46
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setIterations(I)Lat/gadermaier/argon2/Argon2;

    :cond_0
    const-string/jumbo v1, "p"

    .line 49
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "p"

    .line 50
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setParallelism(I)Lat/gadermaier/argon2/Argon2;

    :cond_1
    const-string v1, "m"

    .line 53
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "m"

    .line 54
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setMemory(I)Lat/gadermaier/argon2/Argon2;

    goto :goto_0

    :cond_2
    const-string v1, "k"

    .line 55
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "k"

    .line 56
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    rem-int/lit8 v2, v1, 0x4

    invoke-virtual {v0}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v3

    mul-int v2, v2, v3

    if-nez v2, :cond_3

    .line 59
    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setMemoryInKiB(I)Lat/gadermaier/argon2/Argon2;

    goto :goto_0

    .line 58
    :cond_3
    new-instance p0, Lorg/apache/commons/cli/ParseException;

    const-string v0, "k must be a multiple of p*4"

    invoke-direct {p0, v0}, Lorg/apache/commons/cli/ParseException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    const-string v1, "e"

    .line 63
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 64
    invoke-virtual {v0, v2}, Lat/gadermaier/argon2/Argon2;->setEncodedOnly(Z)V

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "r"

    .line 65
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 66
    invoke-virtual {v0, v2}, Lat/gadermaier/argon2/Argon2;->setRawOnly(Z)V

    :cond_6
    :goto_1
    const-string v1, "i"

    .line 69
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 70
    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2i:Lat/gadermaier/argon2/model/Argon2Type;

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setType(Lat/gadermaier/argon2/model/Argon2Type;)Lat/gadermaier/argon2/Argon2;

    goto :goto_2

    :cond_7
    const-string v1, "d"

    .line 71
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 72
    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2d:Lat/gadermaier/argon2/model/Argon2Type;

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setType(Lat/gadermaier/argon2/model/Argon2Type;)Lat/gadermaier/argon2/Argon2;

    goto :goto_2

    :cond_8
    const-string v1, "id"

    .line 73
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 74
    sget-object v1, Lat/gadermaier/argon2/model/Argon2Type;->Argon2id:Lat/gadermaier/argon2/model/Argon2Type;

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setType(Lat/gadermaier/argon2/model/Argon2Type;)Lat/gadermaier/argon2/Argon2;

    :cond_9
    :goto_2
    const-string v1, "l"

    .line 77
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "l"

    .line 78
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lat/gadermaier/argon2/Argon2;->setOutputLength(I)Lat/gadermaier/argon2/Argon2;

    :cond_a
    const-string/jumbo v1, "v"

    .line 81
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->hasOption(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string/jumbo v1, "v"

    .line 82
    invoke-virtual {p0, v1}, Lorg/apache/commons/cli/CommandLine;->getOptionValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_b

    const/16 v1, 0xd

    if-eq p0, v1, :cond_b

    const-string/jumbo v1, "wrong version"

    .line 84
    invoke-static {v1}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->bailOut(Ljava/lang/String;)V

    .line 86
    :cond_b
    invoke-virtual {v0, p0}, Lat/gadermaier/argon2/Argon2;->setVersion(I)Lat/gadermaier/argon2/Argon2;

    :cond_c
    return-object v0

    .line 43
    :cond_d
    new-instance p0, Lorg/apache/commons/cli/ParseException;

    const-string/jumbo v0, "usage"

    invoke-direct {p0, v0}, Lorg/apache/commons/cli/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static parseArguments([Ljava/lang/String;)Lat/gadermaier/argon2/Argon2;
    .locals 4

    .line 12
    invoke-static {}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->buildOptions()Lorg/apache/commons/cli/Options;

    move-result-object v0

    .line 14
    new-instance v1, Lorg/apache/commons/cli/DefaultParser;

    invoke-direct {v1}, Lorg/apache/commons/cli/DefaultParser;-><init>()V

    .line 15
    new-instance v2, Lorg/apache/commons/cli/HelpFormatter;

    invoke-direct {v2}, Lorg/apache/commons/cli/HelpFormatter;-><init>()V

    const/4 v3, 0x1

    .line 19
    :try_start_0
    invoke-interface {v1, v0, p0}, Lorg/apache/commons/cli/CommandLineParser;->parse(Lorg/apache/commons/cli/Options;[Ljava/lang/String;)Lorg/apache/commons/cli/CommandLine;

    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/cli/CommandLine;->getArgs()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-ne v1, v3, :cond_0

    .line 24
    invoke-static {p0}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->createArgon2(Lorg/apache/commons/cli/CommandLine;)Lat/gadermaier/argon2/Argon2;

    move-result-object p0

    return-object p0

    .line 22
    :cond_0
    new-instance p0, Lorg/apache/commons/cli/ParseException;

    const-string v1, "no password or salt"

    invoke-direct {p0, v1}, Lorg/apache/commons/cli/ParseException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/apache/commons/cli/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p0, "argon2 salt"

    .line 26
    invoke-virtual {v2, p0, v0, v3}, Lorg/apache/commons/cli/HelpFormatter;->printHelp(Ljava/lang/String;Lorg/apache/commons/cli/Options;Z)V

    .line 27
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Password is read from stdin"

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lat/gadermaier/argon2/Argon2ArgumentFactory;->bailOut()V

    const/4 p0, 0x0

    return-object p0
.end method
