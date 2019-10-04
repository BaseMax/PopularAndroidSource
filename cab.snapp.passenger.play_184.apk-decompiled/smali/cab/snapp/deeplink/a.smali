.class public final Lcab/snapp/deeplink/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcab/snapp/deeplink/models/types/PathType;
    .locals 1

    .line 287
    sget-object v0, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/types/PathType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    sget-object p0, Lcab/snapp/deeplink/models/types/PathType;->Here:Lcab/snapp/deeplink/models/types/PathType;

    return-object p0

    .line 291
    :cond_0
    sget-object v0, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/types/PathType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 293
    sget-object p0, Lcab/snapp/deeplink/models/types/PathType;->Selective:Lcab/snapp/deeplink/models/types/PathType;

    return-object p0

    .line 295
    :cond_1
    sget-object v0, Lcab/snapp/deeplink/models/types/PathType;->GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/types/PathType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    sget-object p0, Lcab/snapp/deeplink/models/types/PathType;->GoogleMaps:Lcab/snapp/deeplink/models/types/PathType;

    return-object p0

    .line 299
    :cond_2
    sget-object v0, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/types/PathType;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 301
    sget-object p0, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    return-object p0

    .line 305
    :cond_3
    sget-object p0, Lcab/snapp/deeplink/models/types/PathType;->StringData:Lcab/snapp/deeplink/models/types/PathType;

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;
    .locals 4

    .line 317
    invoke-static {p0}, Lcab/snapp/deeplink/a;->a(Ljava/lang/String;)Lcab/snapp/deeplink/models/types/PathType;

    move-result-object v0

    .line 319
    sget-object v1, Lcab/snapp/deeplink/a$1;->b:[I

    invoke-virtual {v0}, Lcab/snapp/deeplink/models/types/PathType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    return-object v3

    .line 327
    :cond_0
    new-instance v1, Lcab/snapp/deeplink/models/c;

    invoke-static {p0}, Lcab/snapp/deeplink/a;->c(Ljava/lang/String;)Lcab/snapp/deeplink/models/b;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lcab/snapp/deeplink/models/c;-><init>(Lcab/snapp/deeplink/models/types/PathType;Lcab/snapp/deeplink/models/b;Ljava/lang/String;)V

    return-object v1

    .line 325
    :cond_1
    new-instance v1, Lcab/snapp/deeplink/models/c;

    invoke-direct {v1, v0, v3, p0}, Lcab/snapp/deeplink/models/c;-><init>(Lcab/snapp/deeplink/models/types/PathType;Lcab/snapp/deeplink/models/b;Ljava/lang/String;)V

    return-object v1
.end method

.method private static c(Ljava/lang/String;)Lcab/snapp/deeplink/models/b;
    .locals 4

    const-string v0, ","

    .line 341
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 342
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    const/4 v2, 0x1

    .line 343
    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 345
    new-instance p0, Lcab/snapp/deeplink/models/b;

    invoke-direct {p0, v0, v1, v2, v3}, Lcab/snapp/deeplink/models/b;-><init>(DD)V

    return-object p0
.end method


# virtual methods
.method public final getLink()Landroid/net/Uri;
    .locals 1

    .line 355
    iget-object v0, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final getLinkString()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final parse()Lcab/snapp/deeplink/models/a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1d

    const/4 v1, 0x0

    .line 64
    aget-object v3, v0, v1

    .line 65
    aget-object v0, v0, v2

    const-string v4, "//"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 70
    sget-object v4, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Scheme;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    :goto_0
    move-object v5, v3

    goto :goto_1

    .line 74
    :cond_0
    sget-object v4, Lcab/snapp/deeplink/models/types/Scheme;->HTTPS:Lcab/snapp/deeplink/models/types/Scheme;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Scheme;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->HTTPS:Lcab/snapp/deeplink/models/types/Scheme;

    goto :goto_0

    .line 78
    :cond_1
    sget-object v4, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Scheme;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 80
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    goto :goto_0

    .line 82
    :cond_2
    sget-object v4, Lcab/snapp/deeplink/models/types/Scheme;->SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Scheme;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 83
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;

    goto :goto_0

    .line 93
    :goto_1
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Geo:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v5, v3, :cond_a

    const-string v3, "?z="

    .line 100
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, -0x1

    const-string v6, ","

    if-eqz v3, :cond_3

    const-string v3, "\\?z="

    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    aget-object v2, v0, v2

    .line 105
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 107
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, -0x1

    .line 110
    :goto_2
    aget-object v0, v0, v1

    goto :goto_5

    :cond_3
    const-string v3, "?q="

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "\\?q="

    .line 114
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 115
    aget-object v2, v0, v2

    .line 116
    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v7, "%2C%20"

    if-nez v3, :cond_5

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    .line 133
    :cond_4
    aget-object v0, v0, v1

    goto :goto_4

    :cond_5
    :goto_3
    const-string v0, "("

    .line 118
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "\\("

    .line 120
    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 121
    aget-object v0, v0, v1

    .line 122
    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 127
    :cond_6
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_7
    :goto_4
    const/4 v2, -0x1

    .line 137
    :goto_5
    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    new-instance v8, Lcab/snapp/deeplink/models/c;

    sget-object v1, Lcab/snapp/deeplink/models/types/PathType;->Location:Lcab/snapp/deeplink/models/types/PathType;

    invoke-static {v0}, Lcab/snapp/deeplink/a;->c(Ljava/lang/String;)Lcab/snapp/deeplink/models/b;

    move-result-object v3

    invoke-direct {v8, v1, v3, v0}, Lcab/snapp/deeplink/models/c;-><init>(Lcab/snapp/deeplink/models/types/PathType;Lcab/snapp/deeplink/models/b;Ljava/lang/String;)V

    if-eq v2, v4, :cond_8

    .line 142
    invoke-virtual {v8, v2}, Lcab/snapp/deeplink/models/c;->setZoom(I)V

    .line 145
    :cond_8
    new-instance v0, Lcab/snapp/deeplink/models/a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 150
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Given Geo link does not contain the expected latitude and longitude separated by \",\""

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    const-string v3, "/"

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    array-length v4, v0

    if-lez v4, :cond_1b

    .line 164
    aget-object v1, v0, v1

    .line 166
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "Could not find a supported host"

    if-eqz v4, :cond_b

    .line 168
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Ride:Lcab/snapp/deeplink/models/types/Host;

    goto/16 :goto_6

    .line 170
    :cond_b
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 172
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Eco:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 174
    :cond_c
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 176
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Rose:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 178
    :cond_d
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 180
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Bike:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 182
    :cond_e
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 184
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Box:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 186
    :cond_f
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 188
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Open:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 190
    :cond_10
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 192
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Shortcut:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 194
    :cond_11
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->Google:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 196
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->Google:Lcab/snapp/deeplink/models/types/Host;

    goto :goto_6

    .line 198
    :cond_12
    sget-object v4, Lcab/snapp/deeplink/models/types/Host;->CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

    invoke-virtual {v4}, Lcab/snapp/deeplink/models/types/Host;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 200
    sget-object v1, Lcab/snapp/deeplink/models/types/Host;->CompleteGoogle:Lcab/snapp/deeplink/models/types/Host;

    .line 208
    :goto_6
    sget-object v4, Lcab/snapp/deeplink/a$1;->a:[I

    invoke-virtual {v1}, Lcab/snapp/deeplink/models/types/Host;->ordinal()I

    move-result v7

    aget v4, v4, v7

    const/4 v7, 0x3

    const/4 v8, 0x2

    packed-switch v4, :pswitch_data_0

    .line 259
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :pswitch_0
    array-length v4, v0

    if-ne v4, v7, :cond_13

    .line 249
    aget-object v4, v0, v2

    invoke-static {v4}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v7

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcab/snapp/deeplink/models/c;->setValue(Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcab/snapp/deeplink/models/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 256
    :cond_13
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Google Link format seems to be incorrect, the link is: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcab/snapp/deeplink/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :pswitch_1
    array-length v3, v0

    if-ne v3, v7, :cond_14

    .line 219
    aget-object v2, v0, v2

    invoke-static {v2}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v7

    .line 220
    aget-object v0, v0, v8

    invoke-static {v0}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v8

    .line 221
    new-instance v0, Lcab/snapp/deeplink/models/a;

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 223
    :cond_14
    array-length v3, v0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15

    .line 225
    aget-object v2, v0, v2

    invoke-static {v2}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v2

    .line 226
    aget-object v3, v0, v8

    invoke-static {v3}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v8

    .line 227
    aget-object v0, v0, v7

    invoke-static {v0}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v9

    .line 228
    new-instance v0, Lcab/snapp/deeplink/models/a;

    move-object v4, v0

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 230
    :cond_15
    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->Snapp:Lcab/snapp/deeplink/models/types/Scheme;

    const-string v4, "Link format seems to be incorrect, more than three paths have been found"

    if-eq v5, v3, :cond_17

    sget-object v3, Lcab/snapp/deeplink/models/types/Scheme;->SnappDriver:Lcab/snapp/deeplink/models/types/Scheme;

    if-ne v5, v3, :cond_16

    goto :goto_7

    .line 243
    :cond_16
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_17
    :goto_7
    array-length v3, v0

    if-ne v3, v8, :cond_18

    .line 233
    aget-object v0, v0, v2

    invoke-static {v0}, Lcab/snapp/deeplink/a;->b(Ljava/lang/String;)Lcab/snapp/deeplink/models/c;

    move-result-object v7

    .line 234
    new-instance v0, Lcab/snapp/deeplink/models/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 235
    :cond_18
    array-length v0, v0

    if-ne v0, v2, :cond_19

    .line 236
    new-instance v0, Lcab/snapp/deeplink/models/a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v1

    invoke-direct/range {v4 .. v9}, Lcab/snapp/deeplink/models/a;-><init>(Lcab/snapp/deeplink/models/types/Scheme;Lcab/snapp/deeplink/models/types/Host;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;Lcab/snapp/deeplink/models/c;)V

    return-object v0

    .line 238
    :cond_19
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_1a
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1b
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Link format seems to be incorrect, no Host has been found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1c
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Could not find a supported scheme type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 274
    :cond_1d
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Link format seems to be incorrect, no Scheme has been found"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_9

    :goto_8
    throw v0

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
