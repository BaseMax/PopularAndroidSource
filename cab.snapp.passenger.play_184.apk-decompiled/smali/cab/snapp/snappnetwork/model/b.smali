.class public Lcab/snapp/snappnetwork/model/b;
.super Lcab/snapp/snappnetwork/model/f;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/a/c;
        value = "message"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcab/snapp/snappnetwork/model/f;-><init>()V

    .line 20
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/b;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcab/snapp/snappnetwork/model/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcab/snapp/snappnetwork/model/b;->a:Ljava/lang/String;

    return-void
.end method
