.class final Lcom/koushikdutta/async/h$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/koushikdutta/async/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field public runnable:Ljava/lang/Runnable;

.field public time:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/koushikdutta/async/h$f;->runnable:Ljava/lang/Runnable;

    .line 226
    iput-wide p2, p0, Lcom/koushikdutta/async/h$f;->time:J

    return-void
.end method
