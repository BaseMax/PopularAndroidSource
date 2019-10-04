.class public Ll/m;
.super Ljava/lang/Object;
.source "ExecutorCallAdapterFactory.java"

# interfaces
.implements Ll/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/q;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ll/c<",
        "Ljava/lang/Object;",
        "Ll/b<",
        "*>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/reflect/Type;

.field public final synthetic b:Ll/q;


# direct methods
.method public constructor <init>(Ll/q;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/m;->b:Ll/q;

    iput-object p2, p0, Ll/m;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ll/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/m;->a(Ll/b;)Ll/b;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Ll/m;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Ll/b;)Ll/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/b<",
            "Ljava/lang/Object;",
            ">;)",
            "Ll/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ll/q$a;

    iget-object v1, p0, Ll/m;->b:Ll/q;

    iget-object v1, v1, Ll/q;->a:Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, p1}, Ll/q$a;-><init>(Ljava/util/concurrent/Executor;Ll/b;)V

    return-object v0
.end method
