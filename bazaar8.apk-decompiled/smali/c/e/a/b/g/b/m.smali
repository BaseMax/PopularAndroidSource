.class public abstract Lc/e/a/b/g/b/m;
.super Lc/e/a/b/d/a/a/j;
.source "com.google.android.gms:play-services-auth-api-phone@@17.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/e/a/b/d/a/a/j<",
        "Lc/e/a/b/g/b/i;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lc/e/a/b/j/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/e/a/b/j/h<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/e/a/b/d/a/a/j;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/g/b/j;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/e/a/b/g/b/m;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lc/e/a/b/d/a/a$b;Lc/e/a/b/j/h;)V
    .locals 0

    .line 2
    check-cast p1, Lc/e/a/b/g/b/i;

    .line 3
    iput-object p2, p0, Lc/e/a/b/g/b/m;->c:Lc/e/a/b/j/h;

    .line 4
    invoke-virtual {p1}, Lc/e/a/b/d/d/d;->r()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lc/e/a/b/g/b/e;

    invoke-virtual {p0, p1}, Lc/e/a/b/g/b/m;->a(Lc/e/a/b/g/b/e;)V

    return-void
.end method

.method public abstract a(Lc/e/a/b/g/b/e;)V
.end method

.method public final a(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/g/b/m;->c:Lc/e/a/b/j/h;

    invoke-static {p1, v0}, Lc/e/a/b/d/a/a/k;->a(Lcom/google/android/gms/common/api/Status;Lc/e/a/b/j/h;)V

    return-void
.end method
