.class final Lio/reactivex/a/b/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/a/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Lio/reactivex/ah;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lio/reactivex/a/b/b;

    new-instance v1, Landroid/os/Handler;

    .line 30
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/reactivex/a/b/b;-><init>(Landroid/os/Handler;Z)V

    sput-object v0, Lio/reactivex/a/b/a$a;->a:Lio/reactivex/ah;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
