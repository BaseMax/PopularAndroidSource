.class public Lc/c/a/a/b$a;
.super Ljava/lang/Object;
.source "AnalyticsAgent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lc/c/a/a/b/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b$a;->b:Landroid/content/Context;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Lc/c/a/a/b$a;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Lc/c/a/a/b;
    .locals 3

    .line 2
    new-instance v0, Lc/c/a/a/b;

    iget-object v1, p0, Lc/c/a/a/b$a;->b:Landroid/content/Context;

    iget-object v2, p0, Lc/c/a/a/b$a;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2}, Lc/c/a/a/b;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    return-object v0
.end method

.method public final a(Lc/c/a/a/b/c;)V
    .locals 1

    const-string v0, "$this$unaryPlus"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lc/c/a/a/b$a;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
