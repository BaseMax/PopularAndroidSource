.class public final Lc/c/a/c/b/b;
.super Ljava/lang/Object;
.source "ContextExt.kt"


# direct methods
.method public static final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$getNetworkOperator"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    check-cast p0, Landroid/telephony/TelephonyManager;

    const-string v0, "unknown"

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "43270"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TCI"

    goto :goto_1

    :sswitch_1
    const-string v0, "43235"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Irancell"

    goto :goto_1

    :sswitch_2
    const-string v0, "43232"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Taliya"

    goto :goto_1

    :sswitch_3
    const-string v0, "43220"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Rightel"

    goto :goto_1

    :sswitch_4
    const-string v0, "43211"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MCI"

    goto :goto_1

    :sswitch_5
    const-string v0, "42402"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Etisalat"

    goto :goto_1

    :sswitch_6
    const-string v0, "28601"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Turkcell"

    goto :goto_0

    :sswitch_7
    const-string v0, "26207"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "O2_Germany"

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p0

    :cond_2
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x2d9e4f5 -> :sswitch_7
        0x2dadcb1 -> :sswitch_6
        0x2f449f8 -> :sswitch_5
        0x2f4b6f3 -> :sswitch_4
        0x2f4b711 -> :sswitch_3
        0x2f4b732 -> :sswitch_2
        0x2f4b735 -> :sswitch_1
        0x2f4b7ac -> :sswitch_0
    .end sparse-switch
.end method

.method public static final b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$getNetworkType"

    invoke-static {p0, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Landroid/telephony/TelephonyManager;

    const-string v1, "Unknown"

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p0}, Lc/c/a/c/b/b;->c(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "WIFI"

    return-object p0

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string p0, "HSPA+"

    goto :goto_0

    :pswitch_1
    const-string p0, "eHRPD"

    goto :goto_0

    :pswitch_2
    const-string p0, "LTE"

    goto :goto_0

    :pswitch_3
    const-string p0, "EVDO rev. B"

    goto :goto_0

    :pswitch_4
    const-string p0, "iDen"

    goto :goto_0

    :pswitch_5
    const-string p0, "HSPA"

    goto :goto_0

    :pswitch_6
    const-string p0, "HSUPA"

    goto :goto_0

    :pswitch_7
    const-string p0, "HSDPA"

    goto :goto_0

    :pswitch_8
    const-string p0, "1xRTT"

    goto :goto_0

    :pswitch_9
    const-string p0, "EVDO rev. A"

    goto :goto_0

    :pswitch_a
    const-string p0, "EVDO rev. 0"

    goto :goto_0

    :pswitch_b
    const-string p0, "CDMA"

    goto :goto_0

    :pswitch_c
    const-string p0, "UMTS"

    goto :goto_0

    :pswitch_d
    const-string p0, "EDGE"

    goto :goto_0

    :pswitch_e
    const-string p0, "GPRS"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v1, p0

    :catch_0
    :cond_2
    :goto_1
    :pswitch_f
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final c(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "connectivity"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p0}, Lb/i/f/a;->a(Landroid/net/ConnectivityManager;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
