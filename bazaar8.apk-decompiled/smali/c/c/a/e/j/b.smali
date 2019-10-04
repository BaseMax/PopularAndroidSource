.class public final Lc/c/a/e/j/b;
.super Ljava/lang/Object;
.source "GSON.kt"


# static fields
.field public static final a:Lc/e/d/j;

.field public static final b:Lc/c/a/e/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lc/c/a/e/j/b;

    invoke-direct {v0}, Lc/c/a/e/j/b;-><init>()V

    sput-object v0, Lc/c/a/e/j/b;->b:Lc/c/a/e/j/b;

    .line 2
    new-instance v0, Lc/e/d/k;

    invoke-direct {v0}, Lc/e/d/k;-><init>()V

    new-instance v1, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;

    invoke-direct {v1}, Lcom/farsitel/bazaar/data/serialization/DtoUnwrapTypeAdapterFactory;-><init>()V

    invoke-virtual {v0, v1}, Lc/e/d/k;->a(Lc/e/d/y;)Lc/e/d/k;

    invoke-virtual {v0}, Lc/e/d/k;->a()Lc/e/d/j;

    move-result-object v0

    sput-object v0, Lc/c/a/e/j/b;->a:Lc/e/d/j;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lc/e/d/j;
    .locals 2

    .line 1
    sget-object v0, Lc/c/a/e/j/b;->a:Lc/e/d/j;

    const-string v1, "gson"

    invoke-static {v0, v1}, Lh/f/b/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
