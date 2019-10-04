.class final Lcom/google/android/gms/analytics/s;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/analytics/o;

.field private synthetic b:Lcom/google/android/gms/analytics/r;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/r;Lcom/google/android/gms/analytics/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/s;->b:Lcom/google/android/gms/analytics/r;

    iput-object p2, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/o;

    .line 1000
    iget-object v0, v0, Lcom/google/android/gms/analytics/o;->a:Lcom/google/android/gms/analytics/q;

    iget-object v1, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/o;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/q;->a(Lcom/google/android/gms/analytics/o;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->b:Lcom/google/android/gms/analytics/r;

    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/r;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/s;->a:Lcom/google/android/gms/analytics/o;

    invoke-static {v0}, Lcom/google/android/gms/analytics/r;->a(Lcom/google/android/gms/analytics/o;)V

    return-void
.end method
