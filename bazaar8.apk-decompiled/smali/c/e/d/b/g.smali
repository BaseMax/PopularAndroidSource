.class public Lc/e/d/b/g;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc/e/d/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/d/b/p;->a(Lc/e/d/c/a;)Lc/e/d/b/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/e/d/b/w<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lc/e/d/l;

.field public final synthetic b:Ljava/lang/reflect/Type;

.field public final synthetic c:Lc/e/d/b/p;


# direct methods
.method public constructor <init>(Lc/e/d/b/p;Lc/e/d/l;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/g;->c:Lc/e/d/b/p;

    iput-object p2, p0, Lc/e/d/b/g;->a:Lc/e/d/l;

    iput-object p3, p0, Lc/e/d/b/g;->b:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/e/d/b/g;->a:Lc/e/d/l;

    iget-object v1, p0, Lc/e/d/b/g;->b:Ljava/lang/reflect/Type;

    invoke-interface {v0, v1}, Lc/e/d/l;->a(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
