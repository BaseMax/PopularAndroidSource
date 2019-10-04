.class Lat/gadermaier/argon2/Validation;
.super Ljava/lang/Object;
.source "Validation.java"


# direct methods
.method static validateInput(Lat/gadermaier/argon2/Argon2;)V
    .locals 3

    .line 13
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string p0, "degree of parallelism cannot be smaller than one"

    goto/16 :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v0

    const/high16 v2, 0x1000000

    if-le v0, v2, :cond_1

    const-string p0, "parallelism cannot be greater than 16777216"

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getMemory()I

    move-result v0

    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getLanes()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_2

    const-string p0, "memory too small"

    goto :goto_0

    .line 19
    :cond_2
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getIterations()I

    move-result v0

    if-ge v0, v1, :cond_3

    const-string p0, "number of iterations cannot be less than one"

    goto :goto_0

    .line 21
    :cond_3
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getIterations()I

    move-result v0

    const v1, 0x7fffffff

    if-le v0, v1, :cond_4

    const-string p0, "number of iterations too high"

    goto :goto_0

    .line 23
    :cond_4
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getPasswordLength()I

    move-result v0

    if-gez v0, :cond_5

    const-string p0, "password too short"

    goto :goto_0

    .line 25
    :cond_5
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getPasswordLength()I

    move-result v0

    if-le v0, v1, :cond_6

    const-string p0, "password too long"

    goto :goto_0

    .line 27
    :cond_6
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getSaltLength()I

    move-result v0

    if-gez v0, :cond_7

    const-string/jumbo p0, "salt too short"

    goto :goto_0

    .line 29
    :cond_7
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getSaltLength()I

    move-result v0

    if-le v0, v1, :cond_8

    const-string/jumbo p0, "salt too long"

    goto :goto_0

    .line 31
    :cond_8
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getSecretLength()I

    move-result v0

    if-le v0, v1, :cond_9

    const-string/jumbo p0, "secret too long"

    goto :goto_0

    .line 33
    :cond_9
    invoke-virtual {p0}, Lat/gadermaier/argon2/Argon2;->getAdditionalLength()I

    move-result p0

    if-le p0, v1, :cond_a

    const-string p0, "additional data too long"

    goto :goto_0

    :cond_a
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_b

    return-void

    .line 37
    :cond_b
    new-instance v0, Lat/gadermaier/argon2/exception/Argon2InvalidParameterException;

    invoke-direct {v0, p0}, Lat/gadermaier/argon2/exception/Argon2InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
