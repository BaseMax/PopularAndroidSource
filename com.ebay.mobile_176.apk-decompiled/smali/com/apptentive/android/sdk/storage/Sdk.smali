.class public Lcom/apptentive/android/sdk/storage/Sdk;
.super Ljava/lang/Object;
.source "Sdk.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private authorEmail:Ljava/lang/String;

.field private authorName:Ljava/lang/String;

.field private distribution:Ljava/lang/String;

.field private distributionVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private programmingLanguage:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthorEmail()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->authorEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getDistribution()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->distribution:Ljava/lang/String;

    return-object v0
.end method

.method public getDistributionVersion()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->distributionVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getProgrammingLanguage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->programmingLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/apptentive/android/sdk/storage/Sdk;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorEmail(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->authorEmail:Ljava/lang/String;

    return-void
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->authorName:Ljava/lang/String;

    return-void
.end method

.method public setDistribution(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->distribution:Ljava/lang/String;

    return-void
.end method

.method public setDistributionVersion(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->distributionVersion:Ljava/lang/String;

    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->platform:Ljava/lang/String;

    return-void
.end method

.method public setProgrammingLanguage(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->programmingLanguage:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/apptentive/android/sdk/storage/Sdk;->version:Ljava/lang/String;

    return-void
.end method
