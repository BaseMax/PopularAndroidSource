.class final Lcom/google/android/gms/internal/ay;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/f;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ay;->a:I

    return-void
.end method


# virtual methods
.method public final error(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method

.method public final error(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getLogLevel()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ay;->a:I

    return v0
.end method

.method public final info(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setLogLevel(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/internal/ay;->a:I

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ay;->b:Z

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/bf;->zzdvy:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    sget-object p1, Lcom/google/android/gms/internal/bf;->zzdvy:Lcom/google/android/gms/internal/bg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/bg;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x5b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " DEBUG"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ay;->b:Z

    :cond_0
    return-void
.end method

.method public final verbose(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final warn(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
