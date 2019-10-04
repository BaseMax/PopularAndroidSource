.class public final Lc/c/a/n/p/x;
.super Ljava/lang/Object;
.source "VerifyOtpFragment.kt"

# interfaces
.implements Lc/e/a/b/j/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/farsitel/bazaar/ui/login/VerifyOtpFragment;->cb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final a:Lc/c/a/n/p/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc/c/a/n/p/x;

    invoke-direct {v0}, Lc/c/a/n/p/x;-><init>()V

    sput-object v0, Lc/c/a/n/p/x;->a:Lc/c/a/n/p/x;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lc/c/a/c/c/a;->b:Lc/c/a/c/c/a;

    invoke-virtual {v0, p1}, Lc/c/a/c/c/a;->a(Ljava/lang/Throwable;)V

    return-void
.end method
