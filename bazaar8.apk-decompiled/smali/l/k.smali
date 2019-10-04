.class public Ll/k;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Ll/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll/l;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/c;
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

.field public final synthetic b:Ll/l;


# direct methods
.method public constructor <init>(Ll/l;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll/k;->b:Ll/l;

    iput-object p2, p0, Ll/k;->a:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ll/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ll/k;->a(Ll/b;)Ll/b;

    return-object p1
.end method

.method public a()Ljava/lang/reflect/Type;
    .locals 1

    .line 2
    iget-object v0, p0, Ll/k;->a:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public a(Ll/b;)Ll/b;
    .locals 0
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

    return-object p1
.end method
