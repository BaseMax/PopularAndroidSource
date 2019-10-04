.class public interface abstract Lcom/bumptech/glide/load/b/c/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

.field public static final IGNORE:Lcom/bumptech/glide/load/b/c/a$b;

.field public static final LOG:Lcom/bumptech/glide/load/b/c/a$b;

.field public static final THROW:Lcom/bumptech/glide/load/b/c/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 374
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$b$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/c/a$b$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$b;->IGNORE:Lcom/bumptech/glide/load/b/c/a$b;

    .line 383
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$b$2;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/c/a$b$2;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$b;->LOG:Lcom/bumptech/glide/load/b/c/a$b;

    .line 396
    new-instance v0, Lcom/bumptech/glide/load/b/c/a$b$3;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/c/a$b$3;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$b;->THROW:Lcom/bumptech/glide/load/b/c/a$b;

    .line 406
    sget-object v0, Lcom/bumptech/glide/load/b/c/a$b;->LOG:Lcom/bumptech/glide/load/b/c/a$b;

    sput-object v0, Lcom/bumptech/glide/load/b/c/a$b;->DEFAULT:Lcom/bumptech/glide/load/b/c/a$b;

    return-void
.end method


# virtual methods
.method public abstract handle(Ljava/lang/Throwable;)V
.end method
