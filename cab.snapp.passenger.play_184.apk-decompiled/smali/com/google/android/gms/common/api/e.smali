.class public Lcom/google/android/gms/common/api/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/a$a;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/google/android/gms/common/api/internal/al;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/common/api/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/common/api/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/common/api/internal/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/cp<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Looper;

.field private final g:I

.field private final h:Lcom/google/android/gms/common/api/f;

.field private final i:Lcom/google/android/gms/common/api/internal/bx;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object p2, p4, Lcom/google/android/gms/common/api/e$a;->zzfml:Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iget-object p3, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    invoke-static {p2, p3}, Lcom/google/android/gms/common/api/internal/cp;->zza(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/internal/cp;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/cp;

    new-instance p2, Lcom/google/android/gms/common/api/internal/av;

    invoke-direct {p2, p0}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/al;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/al;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/al;->zzais()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/common/api/e;->g:I

    iget-object p2, p4, Lcom/google/android/gms/common/api/e$a;->zzfmk:Lcom/google/android/gms/common/api/internal/bx;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->i:Lcom/google/android/gms/common/api/internal/bx;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    iget-object p3, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/cp;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/common/api/internal/h;->zza(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/al;Lcom/google/android/gms/common/api/internal/cp;)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/bx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/bx;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/r;->zza(Lcom/google/android/gms/common/api/internal/bx;)Lcom/google/android/gms/common/api/r;

    move-result-object p4

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/google/android/gms/common/api/r;->zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/api/r;->zzagq()Lcom/google/android/gms/common/api/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/cp;->zzb(Lcom/google/android/gms/common/api/a;)Lcom/google/android/gms/common/api/internal/cp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/cp;

    new-instance p1, Lcom/google/android/gms/common/api/internal/av;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/al;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/al;->zzais()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/e;->g:I

    new-instance p1, Lcom/google/android/gms/common/api/internal/co;

    invoke-direct {p1}, Lcom/google/android/gms/common/api/internal/co;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->i:Lcom/google/android/gms/common/api/internal/bx;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/bx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/bx;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p3, Lcom/google/android/gms/common/api/r;

    invoke-direct {p3}, Lcom/google/android/gms/common/api/r;-><init>()V

    invoke-virtual {p3, p4}, Lcom/google/android/gms/common/api/r;->zza(Landroid/os/Looper;)Lcom/google/android/gms/common/api/r;

    move-result-object p3

    invoke-virtual {p3, p5}, Lcom/google/android/gms/common/api/r;->zza(Lcom/google/android/gms/common/api/internal/bx;)Lcom/google/android/gms/common/api/r;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/common/api/r;->zzagq()Lcom/google/android/gms/common/api/e$a;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p4, p3}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iput-object p3, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    iget-object p1, p4, Lcom/google/android/gms/common/api/e$a;->zzfml:Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    iget-object p2, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    invoke-static {p1, p2}, Lcom/google/android/gms/common/api/internal/cp;->zza(Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/internal/cp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/cp;

    new-instance p1, Lcom/google/android/gms/common/api/internal/av;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/api/internal/av;-><init>(Lcom/google/android/gms/common/api/e;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/al;->zzcj(Landroid/content/Context;)Lcom/google/android/gms/common/api/internal/al;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/al;->zzais()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/api/e;->g:I

    iget-object p1, p4, Lcom/google/android/gms/common/api/e$a;->zzfmk:Lcom/google/android/gms/common/api/internal/bx;

    iput-object p1, p0, Lcom/google/android/gms/common/api/e;->i:Lcom/google/android/gms/common/api/internal/bx;

    iget-object p1, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/internal/bx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;TO;",
            "Lcom/google/android/gms/common/api/internal/bx;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/r;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/r;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/r;->zza(Lcom/google/android/gms/common/api/internal/bx;)Lcom/google/android/gms/common/api/r;

    move-result-object p4

    invoke-virtual {p4}, Lcom/google/android/gms/common/api/r;->zzagq()Lcom/google/android/gms/common/api/e$a;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/e$a;)V

    return-void
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(I",
            "Lcom/google/android/gms/common/api/internal/cb<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v6, Lcom/google/android/gms/c/g;

    invoke-direct {v6}, Lcom/google/android/gms/c/g;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->i:Lcom/google/android/gms/common/api/internal/bx;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/cb;Lcom/google/android/gms/c/g;Lcom/google/android/gms/common/api/internal/bx;)V

    invoke-virtual {v6}, Lcom/google/android/gms/c/g;->getTask()Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method private final a(ILcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cu<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzahi()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;ILcom/google/android/gms/common/api/internal/cu;)V

    return-object p2
.end method

.method private final a()Lcom/google/android/gms/common/internal/bm;
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/internal/bm;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/bm;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$b;->getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$a$a;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/android/gms/common/api/a$a$a;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$a;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/bm;->zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    instance-of v2, v1, Lcom/google/android/gms/common/api/a$a$b;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/google/android/gms/common/api/a$a$b;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/a$a$b;->getGoogleSignInAccount()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->zzabb()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/bm;->zze(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/bm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/e;->g:I

    return v0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bi;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/bi<",
            "*>;)",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/internal/bi;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/bo;Lcom/google/android/gms/common/api/internal/cl;)Lcom/google/android/gms/c/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/bo<",
            "TA;*>;U:",
            "Lcom/google/android/gms/common/api/internal/cl<",
            "TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/c/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bo;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/cl;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/bo;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/cl;->zzajo()Lcom/google/android/gms/common/api/internal/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/bi;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/ap;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->a:Lcom/google/android/gms/common/api/internal/al;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/api/internal/al;->zza(Lcom/google/android/gms/common/api/e;Lcom/google/android/gms/common/api/internal/bo;Lcom/google/android/gms/common/api/internal/cl;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/cb<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/os/Looper;Lcom/google/android/gms/common/api/internal/an;)Lcom/google/android/gms/common/api/a$f;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/api/internal/an<",
            "TO;>;)",
            "Lcom/google/android/gms/common/api/a$f;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/bm;->zzgf(Ljava/lang/String;)Lcom/google/android/gms/common/internal/bm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/bm;->zzgg(Ljava/lang/String;)Lcom/google/android/gms/common/internal/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/bm;->zzald()Lcom/google/android/gms/common/internal/bl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/a;->zzage()Lcom/google/android/gms/common/api/a$b;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/api/e;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/common/api/a$b;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/bl;Ljava/lang/Object;Lcom/google/android/gms/common/api/f$b;Lcom/google/android/gms/common/api/f$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    return-object p1
.end method

.method public final zza(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/internal/bg<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->f:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/common/api/internal/bk;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/bg;

    move-result-object p1

    return-object p1
.end method

.method public zza(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/common/api/internal/bt;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/api/internal/bt;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/e;->a()Lcom/google/android/gms/common/internal/bm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/bm;->zzald()Lcom/google/android/gms/common/internal/bl;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/common/api/internal/bt;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/bl;)V

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cu<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;

    move-result-object p1

    return-object p1
.end method

.method public final zzagl()Lcom/google/android/gms/common/api/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/a<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->c:Lcom/google/android/gms/common/api/a;

    return-object v0
.end method

.method public final zzagm()Lcom/google/android/gms/common/api/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->d:Lcom/google/android/gms/common/api/a$a;

    return-object v0
.end method

.method public final zzagn()Lcom/google/android/gms/common/api/internal/cp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/internal/cp<",
            "TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->e:Lcom/google/android/gms/common/api/internal/cp;

    return-object v0
.end method

.method public final zzago()Lcom/google/android/gms/common/api/f;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/e;->h:Lcom/google/android/gms/common/api/f;

    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/a$c;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/cb<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/c/f<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/cb;)Lcom/google/android/gms/c/f;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cu<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;

    move-result-object p1

    return-object p1
.end method

.method public final zzc(Lcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/a$c;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/cu<",
            "+",
            "Lcom/google/android/gms/common/api/m;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/e;->a(ILcom/google/android/gms/common/api/internal/cu;)Lcom/google/android/gms/common/api/internal/cu;

    move-result-object p1

    return-object p1
.end method
