.class public Lcom/apptentive/android/sdk/Apptentive$Version;
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
    name = "Version"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/apptentive/android/sdk/Apptentive$Version;",
        ">;"
    }
.end annotation


# static fields
.field public static final KEY_TYPE:Ljava/lang/String; = "_type"

.field public static final TYPE:Ljava/lang/String; = "version"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1725
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 1732
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$Version;->version:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1728
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "version"

    const/4 v1, 0x0

    .line 1729
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$Version;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/apptentive/android/sdk/Apptentive$Version;)I
    .locals 9

    .line 1761
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/Apptentive$Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    .line 1762
    invoke-virtual {p1}, Lcom/apptentive/android/sdk/Apptentive$Version;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\."

    .line 1763
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\."

    .line 1764
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1766
    array-length v1, v0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_4

    .line 1770
    array-length v4, v0

    const-wide/16 v5, 0x0

    if-le v4, v3, :cond_0

    .line 1771
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    goto :goto_1

    :cond_0
    move-wide v7, v5

    .line 1774
    :goto_1
    array-length v4, p1

    if-le v4, v3, :cond_1

    .line 1775
    aget-object v4, p1, v3

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    :cond_1
    cmp-long v4, v7, v5

    if-gez v4, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    if-lez v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1716
    check-cast p1, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/Apptentive$Version;->compareTo(Lcom/apptentive/android/sdk/Apptentive$Version;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1791
    :cond_0
    instance-of v1, p1, Lcom/apptentive/android/sdk/Apptentive$Version;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1792
    check-cast p1, Lcom/apptentive/android/sdk/Apptentive$Version;

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/Apptentive$Version;->compareTo(Lcom/apptentive/android/sdk/Apptentive$Version;)I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/apptentive/android/sdk/Apptentive$Version;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(J)V
    .locals 0

    .line 1741
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apptentive/android/sdk/Apptentive$Version;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1737
    iput-object p1, p0, Lcom/apptentive/android/sdk/Apptentive$Version;->version:Ljava/lang/String;

    return-void
.end method

.method public toJsonObject()V
    .locals 3

    .line 1749
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "_type"

    const-string/jumbo v2, "version"

    .line 1751
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    .line 1752
    iget-object v2, p0, Lcom/apptentive/android/sdk/Apptentive$Version;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error creating Apptentive.Version."

    const/4 v2, 0x0

    .line 1754
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/apptentive/android/sdk/ApptentiveLog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1755
    invoke-static {v0}, Lcom/apptentive/android/sdk/Apptentive;->access$300(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lcom/apptentive/android/sdk/Apptentive$Version;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
