.class public final Lcom/google/android/gms/analytics/e$b;
.super Lcom/google/android/gms/analytics/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/e$c<",
        "Lcom/google/android/gms/analytics/e$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/e$c;-><init>()V

    const-string v0, "&t"

    const-string v1, "exception"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-void
.end method


# virtual methods
.method public final setDescription(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$b;
    .locals 1

    const-string v0, "&exd"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public final setFatal(Z)Lcom/google/android/gms/analytics/e$b;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/ce;->zzak(Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "&exf"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method
