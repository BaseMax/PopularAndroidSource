.class public Lc/e/d/b/m;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"

# interfaces
.implements Lc/e/d/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/d/b/p;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lc/e/d/b/w;
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
.field public final synthetic a:Lc/e/d/b/p;


# direct methods
.method public constructor <init>(Lc/e/d/b/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/d/b/m;->a:Lc/e/d/b/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method
