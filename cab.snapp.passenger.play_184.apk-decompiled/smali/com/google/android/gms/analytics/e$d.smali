.class public final Lcom/google/android/gms/analytics/e$d;
.super Lcom/google/android/gms/analytics/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/e$c<",
        "Lcom/google/android/gms/analytics/e$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/e$c;-><init>()V

    const-string v0, "&t"

    const-string v1, "screenview"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-void
.end method
