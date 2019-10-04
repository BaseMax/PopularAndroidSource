.class public Lc/e/a/b/d/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/b/d/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/e/a/b/d/a/c$a$a;
    }
.end annotation


# static fields
.field public static final a:Lc/e/a/b/d/a/c$a;


# instance fields
.field public final b:Lc/e/a/b/d/a/a/i;

.field public final c:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/e/a/b/d/a/c$a$a;

    invoke-direct {v0}, Lc/e/a/b/d/a/c$a$a;-><init>()V

    invoke-virtual {v0}, Lc/e/a/b/d/a/c$a$a;->a()Lc/e/a/b/d/a/c$a;

    move-result-object v0

    sput-object v0, Lc/e/a/b/d/a/c$a;->a:Lc/e/a/b/d/a/c$a;

    return-void
.end method

.method public constructor <init>(Lc/e/a/b/d/a/a/i;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/b/d/a/c$a;->b:Lc/e/a/b/d/a/a/i;

    .line 3
    iput-object p3, p0, Lc/e/a/b/d/a/c$a;->c:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/b/d/a/a/i;Landroid/accounts/Account;Landroid/os/Looper;Lc/e/a/b/d/a/i;)V
    .locals 0

    const/4 p2, 0x0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lc/e/a/b/d/a/c$a;-><init>(Lc/e/a/b/d/a/a/i;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
