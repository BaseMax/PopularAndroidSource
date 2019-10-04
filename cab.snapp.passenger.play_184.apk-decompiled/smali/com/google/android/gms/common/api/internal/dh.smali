.class public final Lcom/google/android/gms/common/api/internal/dh;
.super Lcom/google/android/gms/common/api/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Lcom/google/android/gms/common/api/e<",
        "TO;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/google/android/gms/common/api/a$f;

.field private final c:Lcom/google/android/gms/common/api/internal/db;

.field private final d:Lcom/google/android/gms/common/internal/bl;

.field private final e:Lcom/google/android/gms/common/api/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a$b<",
            "+",
            "Lcom/google/android/gms/internal/ob;",
            "Lcom/google/android/gms/internal/oc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;Lcom/google/android/gms/common/api/a$f;Lcom/google/android/gms/common/api/internal/db;Lcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/a$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/a$f;",
            "Lcom/google/android/gms/common/api/internal/db;",
            "Lcom/google/android/gms/common/internal/bl;",
            "Lcom/google/android/gms/common/api/a$b<",
            "+",
            "Lcom/google/android/gms/internal/ob;",
            "Lcom/google/android/gms/internal/oc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/common/api/internal/dh;->b:Lcom/google/android/gms/common/api/a$f;

    iput-object p5, p0, Lcom/google/android/gms/common/api/internal/dh;->c:Lcom/google/android/gms/common/api/internal/db;

    iput-object p6, p0, Lcom/google/android/gms/common/api/internal/dh;->d:Lcom/google/android/gms/common/internal/bl;

    iput-object p7, p0, Lcom/google/android/gms/common/api/internal/dh;->e:Lcom/google/android/gms/common/api/a$b;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dh;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method


# virtual methods
.method public final zza(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/an;)Lcom/google/android/gms/common/api/a$f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/an<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dh;->c:Lcom/google/android/gms/common/api/internal/db;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/db;->zza(Lcom/google/android/gms/common/api/internal/dc;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/dh;->b:Lcom/google/android/gms/common/api/a$f;

    return-object p1
.end method

.method public final zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/bt;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/api/internal/bt;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/dh;->d:Lcom/google/android/gms/common/internal/bl;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/dh;->e:Lcom/google/android/gms/common/api/a$b;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/common/api/internal/bt;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/bl;Lcom/google/android/gms/common/api/a$b;)V

    return-object v0
.end method

.method public final zzahp()Lcom/google/android/gms/common/api/a$f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/dh;->b:Lcom/google/android/gms/common/api/a$f;

    return-object v0
.end method
