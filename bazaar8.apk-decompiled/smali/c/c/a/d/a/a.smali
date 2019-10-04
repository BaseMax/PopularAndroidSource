.class public final Lc/c/a/d/a/a;
.super Ljava/lang/Object;
.source "AppSettings.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/a/d/a/a$a;
    }
.end annotation


# static fields
.field public static volatile a:Lc/c/a/e/d/u/a;

.field public static final b:Lc/c/a/d/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc/c/a/d/a/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/a/d/a/a$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lc/c/a/d/a/a;->b:Lc/c/a/d/a/a$a;

    return-void
.end method

.method public static final synthetic a()Lc/c/a/e/d/u/a;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/d/a/a;->a:Lc/c/a/e/d/u/a;

    return-object v0
.end method
