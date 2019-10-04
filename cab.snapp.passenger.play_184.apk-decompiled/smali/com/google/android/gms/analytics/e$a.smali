.class public final Lcom/google/android/gms/analytics/e$a;
.super Lcom/google/android/gms/analytics/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/e$c<",
        "Lcom/google/android/gms/analytics/e$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/analytics/e$c;-><init>()V

    const-string v0, "&t"

    const-string v1, "event"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/e$a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/e$a;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/analytics/e$a;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;

    return-void
.end method


# virtual methods
.method public final setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;
    .locals 1

    const-string v0, "&ea"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public final setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;
    .locals 1

    const-string v0, "&ec"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public final setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/e$a;
    .locals 1

    const-string v0, "&el"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method

.method public final setValue(J)Lcom/google/android/gms/analytics/e$a;
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&ev"

    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/analytics/e$c;->set(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/analytics/e$c;

    return-object p0
.end method
