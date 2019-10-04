.class public abstract Lcom/google/android/gms/internal/ps$c;
.super Lcom/google/android/gms/internal/ps;

# interfaces
.implements Lcom/google/android/gms/internal/qt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ps$c<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ps<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/qt;"
    }
.end annotation


# instance fields
.field protected d:Lcom/google/android/gms/internal/po;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/po<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ps;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/po;->zzcxf()Lcom/google/android/gms/internal/po;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ps$c;->d:Lcom/google/android/gms/internal/po;

    return-void
.end method
