.class public final Lcom/google/android/gms/internal/jl;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:J

.field private c:Z

.field private d:J

.field private synthetic e:Lcom/google/android/gms/internal/jj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/jj;Ljava/lang/String;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/jl;->e:Lcom/google/android/gms/internal/jj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/ap;->zzgm(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/jl;->a:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/internal/jl;->b:J

    return-void
.end method


# virtual methods
.method public final get()J
    .locals 4

    iget-boolean v0, p0, Lcom/google/android/gms/internal/jl;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/jl;->c:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->e:Lcom/google/android/gms/internal/jj;

    invoke-static {v0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/jj;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jl;->a:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/internal/jl;->b:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/jl;->d:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/jl;->d:J

    return-wide v0
.end method

.method public final set(J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/jl;->e:Lcom/google/android/gms/internal/jj;

    invoke-static {v0}, Lcom/google/android/gms/internal/jj;->a(Lcom/google/android/gms/internal/jj;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/jl;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/jl;->d:J

    return-void
.end method
