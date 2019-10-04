.class public Lcom/apptentive/android/sdk/Apptentive$DateTime;
.super Ljava/lang/Object;
.source "Apptentive.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apptentive/android/sdk/Apptentive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateTime"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/apptentive/android/sdk/Apptentive$DateTime;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "_type"

.field public static final SEC:Ljava/lang/String; = "sec"

.field public static final TYPE:Ljava/lang/String; = "datetime"


# instance fields
.field private sec:Ljava/lang/String;


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1814
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1815
    invoke-virtual {p0, p1, p2}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->setDateTime(D)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1810
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "sec"

    .line 1811
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;->sec:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/apptentive/android/sdk/Apptentive$DateTime;)I
    .locals 4

    .line 1845
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->getDateTime()D

    move-result-wide v0

    .line 1846
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->getDateTime()D

    move-result-wide v2

    .line 1847
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1803
    check-cast p1, Lcom/apptentive/android/sdk/Apptentive$DateTime;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->compareTo(Lcom/apptentive/android/sdk/Apptentive$DateTime;)I

    move-result p1

    return p1
.end method

.method public getDateTime()D
    .locals 2

    .line 1823
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;->sec:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public setDateTime(D)V
    .locals 0

    .line 1819
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;->sec:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 4

    .line 1827
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_type"

    const-string v2, "datetime"

    .line 1829
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "sec"

    .line 1830
    iget-object v2, p0, Lcom/apptentive/android/sdk/Apptentive$DateTime;->sec:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error creating Apptentive.DateTime."

    const/4 v3, 0x0

    .line 1832
    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1833
    invoke-static {v1}, Lcom/apptentive/android/sdk/Apptentive;->access$300(Ljava/lang/Exception;)V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1840
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/Apptentive$DateTime;->getDateTime()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
