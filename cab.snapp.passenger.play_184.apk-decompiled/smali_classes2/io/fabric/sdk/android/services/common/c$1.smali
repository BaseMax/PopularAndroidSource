.class final Lio/fabric/sdk/android/services/common/c$1;
.super Lio/fabric/sdk/android/services/common/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/common/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/common/b;

.field final synthetic b:Lio/fabric/sdk/android/services/common/c;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/common/c;Lio/fabric/sdk/android/services/common/b;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/c$1;->b:Lio/fabric/sdk/android/services/common/c;

    iput-object p2, p0, Lio/fabric/sdk/android/services/common/c$1;->a:Lio/fabric/sdk/android/services/common/b;

    invoke-direct {p0}, Lio/fabric/sdk/android/services/common/h;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRun()V
    .locals 4

    .line 70
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/c$1;->b:Lio/fabric/sdk/android/services/common/c;

    .line 1028
    invoke-virtual {v0}, Lio/fabric/sdk/android/services/common/c;->a()Lio/fabric/sdk/android/services/common/b;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c$1;->a:Lio/fabric/sdk/android/services/common/b;

    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-static {}, Lio/fabric/sdk/android/c;->getLogger()Lio/fabric/sdk/android/l;

    move-result-object v1

    const-string v2, "Fabric"

    const-string v3, "Asychronously getting Advertising Info and storing it to preferences"

    invoke-interface {v1, v2, v3}, Lio/fabric/sdk/android/l;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lio/fabric/sdk/android/services/common/c$1;->b:Lio/fabric/sdk/android/services/common/c;

    .line 2028
    invoke-virtual {v1, v0}, Lio/fabric/sdk/android/services/common/c;->a(Lio/fabric/sdk/android/services/common/b;)V

    :cond_0
    return-void
.end method
