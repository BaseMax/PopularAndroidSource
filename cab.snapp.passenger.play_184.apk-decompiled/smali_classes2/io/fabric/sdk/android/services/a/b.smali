.class public final Lio/fabric/sdk/android/services/a/b;
.super Lio/fabric/sdk/android/services/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/fabric/sdk/android/services/a/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, v0}, Lio/fabric/sdk/android/services/a/b;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    return-void
.end method

.method public constructor <init>(Lio/fabric/sdk/android/services/a/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/fabric/sdk/android/services/a/c<",
            "TT;>;)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lio/fabric/sdk/android/services/a/a;-><init>(Lio/fabric/sdk/android/services/a/c;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method protected final a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    return-void
.end method

.method protected final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/fabric/sdk/android/services/a/b;->a:Ljava/lang/Object;

    return-object v0
.end method
