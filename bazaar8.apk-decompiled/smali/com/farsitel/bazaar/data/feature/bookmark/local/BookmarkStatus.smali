.class public final enum Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
.super Ljava/lang/Enum;
.source "BookmarkEntity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

.field public static final Companion:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;

.field public static final enum REMOVE:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

.field public static final synthetic a:[Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    new-instance v1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    const/4 v2, 0x0

    const-string v3, "BOOKMARK"

    .line 1
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->BOOKMARK:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    const/4 v2, 0x1

    const-string v3, "REMOVE"

    .line 2
    invoke-direct {v1, v3, v2, v2}, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->REMOVE:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->a:[Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    new-instance v0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->Companion:Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->a:[Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;

    return-object v0
.end method


# virtual methods
.method public final f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/farsitel/bazaar/data/feature/bookmark/local/BookmarkStatus;->value:I

    return v0
.end method
