.class public final Lc/c/a/e/f/f$a;
.super Ljava/lang/Object;
.source "EntityTypeMapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/e/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/e/f/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/farsitel/bazaar/data/entity/EntityType;
    .locals 1

    .line 1
    invoke-static {}, Lcom/farsitel/bazaar/data/entity/EntityType;->values()[Lcom/farsitel/bazaar/data/entity/EntityType;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final a(Lcom/farsitel/bazaar/data/entity/EntityType;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "entityType"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method