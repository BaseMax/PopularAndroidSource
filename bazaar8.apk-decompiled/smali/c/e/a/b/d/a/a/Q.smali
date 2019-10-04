.class public final Lc/e/a/b/d/a/a/Q;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lc/e/a/b/d/d/r;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lc/e/a/b/d/a/a/Q;->b:Lcom/google/android/gms/common/ConnectionResult;

    .line 4
    iput p2, p0, Lc/e/a/b/d/a/a/Q;->a:I

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/b/d/a/a/Q;->b:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public final b()I
    .locals 1

    .line 1
    iget v0, p0, Lc/e/a/b/d/a/a/Q;->a:I

    return v0
.end method
