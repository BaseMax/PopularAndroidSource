.class public final Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse;
.super Ljava/lang/Object;
.source "AnswerResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Difference;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Differences;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteType;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewritePromoteType;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMode;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$NameAndValue;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteMessage;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteInfo;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteDescriptor;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResultAttribute;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RewriteResult;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrite;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$RequestDifference;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$AnswerItems;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Items;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageQueryAction;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageOverlay;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAction;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswer;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswers;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ThemesTracking;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$StatefulLabel;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotStatefulLabelOption;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionTypeEnum;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionMeta;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotOptionEnum;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivotQueryOption;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$ItemPivot;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledItem;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswer;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;,
        Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$IconMessages;
    }
.end annotation


# static fields
.field protected static final CATEGORY_SERVICE_VALUE:Ljava/lang/String; = "category_constraint"

.field protected static final DEALS_SERVICE_VALUE:Ljava/lang/String; = "deals_constraint"

.field protected static final FITMENT_SERVICE_VALUE:Ljava/lang/String; = "fitment"

.field protected static final KEYWORD_SERVICE_VALUE:Ljava/lang/String; = "keyword_constraint"

.field protected static final QUERY_REWRITE_SERVICE_VALUE:Ljava/lang/String; = "query_rewrite"

.field protected static final RECALL_FILTERING_SERVICE_VALUE:Ljava/lang/String; = "recall_filtering"

.field protected static final SITE_SERVICE_VALUE:Ljava/lang/String; = "site_constraint"

.field protected static final SPELL_AUTO_CORRECT_SERVICE_VALUE:Ljava/lang/String; = "spell_auto_correct"

.field protected static final SPELL_CHECK_SERVICE_VALUE:Ljava/lang/String; = "spell_check"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public compatibleProduct:Lcom/ebay/nautilus/domain/data/compatibility/CompatibleProductAnswers;

.field public errorMessage:Lcom/ebay/common/net/api/search/wiremodel/ErrorMessage;

.field public iconMessages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$IconMessages;

.field public items:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Items;

.field public labeledItem:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LabeledAnswers;

.field public landingPage:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$LandingPageAnswers;

.field public messages:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Messages;

.field public motorAnswers:Lcom/ebay/nautilus/domain/data/verticals/motor/wire/MotorAnswers;

.field public rewrites:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$Rewrites;

.field public searchQuery:Lcom/ebay/common/net/api/search/answers/wire/AnswerResponse$QueryAnswers;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
