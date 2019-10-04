.class final Landroid/support/v4/media/session/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/h$b;,
        Landroid/support/v4/media/session/h$a;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/h$a;)Ljava/lang/Object;
    .locals 1

    .line 28
    new-instance v0, Landroid/support/v4/media/session/h$b;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/h$b;-><init>(Landroid/support/v4/media/session/h$a;)V

    return-object v0
.end method
