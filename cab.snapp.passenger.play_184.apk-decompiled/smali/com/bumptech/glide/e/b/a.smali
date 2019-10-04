.class public final Lcom/bumptech/glide/e/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/e/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/e/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b/b<",
        "TR;>;"
    }
.end annotation


# static fields
.field static final a:Lcom/bumptech/glide/e/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/a<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/bumptech/glide/e/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/e/b/c<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/bumptech/glide/e/b/a;

    invoke-direct {v0}, Lcom/bumptech/glide/e/b/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/e/b/a;->a:Lcom/bumptech/glide/e/b/a;

    .line 15
    new-instance v0, Lcom/bumptech/glide/e/b/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/e/b/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/e/b/a;->b:Lcom/bumptech/glide/e/b/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/e/b/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/e/b/b<",
            "TR;>;"
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/bumptech/glide/e/b/a;->a:Lcom/bumptech/glide/e/b/a;

    return-object v0
.end method

.method public static getFactory()Lcom/bumptech/glide/e/b/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/e/b/c<",
            "TR;>;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/bumptech/glide/e/b/a;->b:Lcom/bumptech/glide/e/b/c;

    return-object v0
.end method


# virtual methods
.method public final transition(Ljava/lang/Object;Lcom/bumptech/glide/e/b/b$a;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
