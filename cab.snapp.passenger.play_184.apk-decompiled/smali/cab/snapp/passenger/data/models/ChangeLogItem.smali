.class public Lcab/snapp/passenger/data/models/ChangeLogItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/a/c;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcab/snapp/passenger/data/models/ChangeLogItem;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 19
    iget v0, p0, Lcab/snapp/passenger/data/models/ChangeLogItem;->version:I

    return v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/data/models/ChangeLogItem;->message:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcab/snapp/passenger/data/models/ChangeLogItem;->version:I

    return-void
.end method
