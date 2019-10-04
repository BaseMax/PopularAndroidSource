.class public final enum Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
.super Ljava/lang/Enum;
.source "SearchHistoryItem.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/farsitel/bazaar/ui/search/SearchHistoryType;",
        ">;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;

.field public static final enum HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

.field public static final enum NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

.field public static final synthetic a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    const/4 v2, 0x0

    const-string v3, "HISTORY"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->HISTORY:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    const/4 v2, 0x1

    const-string v3, "NONE"

    invoke-direct {v1, v3, v2}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->NONE:Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    new-instance v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->Companion:Lcom/farsitel/bazaar/ui/search/SearchHistoryType$a;

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

.method public static valueOf(Ljava/lang/String;)Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
    .locals 1

    const-class v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-object p0
.end method

.method public static values()[Lcom/farsitel/bazaar/ui/search/SearchHistoryType;
    .locals 1

    sget-object v0, Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->a:[Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    invoke-virtual {v0}, [Lcom/farsitel/bazaar/ui/search/SearchHistoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/farsitel/bazaar/ui/search/SearchHistoryType;

    return-object v0
.end method
