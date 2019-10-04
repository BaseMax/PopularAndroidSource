.class public Lcab/snapp/passenger/d/b;
.super Lcom/raizlabs/android/dbflow/structure/BaseModel;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/raizlabs/android/dbflow/structure/BaseModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getJsonString()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcab/snapp/passenger/d/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcab/snapp/passenger/d/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModificationTimestamp()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcab/snapp/passenger/d/b;->d:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 40
    iget v0, p0, Lcab/snapp/passenger/d/b;->b:I

    return v0
.end method

.method public setJsonString(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcab/snapp/passenger/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcab/snapp/passenger/d/b;->a:Ljava/lang/String;

    return-void
.end method

.method public setLastModificationTimestamp(J)V
    .locals 0

    .line 65
    iput-wide p1, p0, Lcab/snapp/passenger/d/b;->d:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcab/snapp/passenger/d/b;->b:I

    return-void
.end method
