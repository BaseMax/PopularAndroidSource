.class public final enum Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;
.super Ljava/lang/Enum;
.source "SearchHistoryItem.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

.field public static final enum NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    const/4 v2, 0x0

    const-string v3, "HISTORY"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/search/SearchHistoryViewType;

    return-object v0
.end method
