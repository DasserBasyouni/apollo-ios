// @generated
// This file was automatically generated and should not be edited.

@_exported import ApolloAPI

public class DroidDetailsWithFragmentQuery: GraphQLQuery {
  public static let operationName: String = "DroidDetailsWithFragment"
  public static let operationDocument: ApolloAPI.OperationDocument = .init(
    operationIdentifier: "7277e97563e911ac8f5c91d401028d218aae41f38df014d7fa0b037bb2a2e739",
    definition: .init(
      #"""
      query DroidDetailsWithFragment($episode: Episode) {
        hero(episode: $episode) {
          __typename
          ...DroidDetails
        }
      }
      """#,
      fragments: [DroidDetails.self]
    ))

  public var episode: GraphQLNullable<GraphQLEnum<Episode>>

  public init(episode: GraphQLNullable<GraphQLEnum<Episode>>) {
    self.episode = episode
  }

  public var __variables: Variables? { ["episode": episode] }

  public struct Data: StarWarsAPI.SelectionSet {
    public let __data: DataDict
    public init(_dataDict: DataDict) { __data = _dataDict }

    public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Query }
    public static var __selections: [ApolloAPI.Selection] { [
      .field("hero", Hero?.self, arguments: ["episode": .variable("episode")]),
    ] }

    public var hero: Hero? { __data["hero"] }

    public init(
      hero: Hero? = nil
    ) {
      self.init(_dataDict: DataDict(
        data: [
          "__typename": StarWarsAPI.Objects.Query.typename,
          "hero": hero._fieldData,
        ],
        fulfilledFragments: [
          ObjectIdentifier(DroidDetailsWithFragmentQuery.Data.self)
        ]
      ))
    }

    /// Hero
    ///
    /// Parent Type: `Character`
    public struct Hero: StarWarsAPI.SelectionSet {
      public let __data: DataDict
      public init(_dataDict: DataDict) { __data = _dataDict }

      public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Interfaces.Character }
      public static var __selections: [ApolloAPI.Selection] { [
        .field("__typename", String.self),
        .inlineFragment(AsDroid.self),
      ] }

      public var asDroid: AsDroid? { _asInlineFragment() }

      public init(
        __typename: String
      ) {
        self.init(_dataDict: DataDict(
          data: [
            "__typename": __typename,
          ],
          fulfilledFragments: [
            ObjectIdentifier(DroidDetailsWithFragmentQuery.Data.Hero.self)
          ]
        ))
      }

      /// Hero.AsDroid
      ///
      /// Parent Type: `Droid`
      public struct AsDroid: StarWarsAPI.InlineFragment {
        public let __data: DataDict
        public init(_dataDict: DataDict) { __data = _dataDict }

        public typealias RootEntityType = DroidDetailsWithFragmentQuery.Data.Hero
        public static var __parentType: ApolloAPI.ParentType { StarWarsAPI.Objects.Droid }
        public static var __selections: [ApolloAPI.Selection] { [
          .fragment(DroidDetails.self),
        ] }

        /// What others call this droid
        public var name: String { __data["name"] }
        /// This droid's primary function
        public var primaryFunction: String? { __data["primaryFunction"] }

        public struct Fragments: FragmentContainer {
          public let __data: DataDict
          public init(_dataDict: DataDict) { __data = _dataDict }

          public var droidDetails: DroidDetails { _toFragment() }
        }

        public init(
          name: String,
          primaryFunction: String? = nil
        ) {
          self.init(_dataDict: DataDict(
            data: [
              "__typename": StarWarsAPI.Objects.Droid.typename,
              "name": name,
              "primaryFunction": primaryFunction,
            ],
            fulfilledFragments: [
              ObjectIdentifier(DroidDetailsWithFragmentQuery.Data.Hero.self),
              ObjectIdentifier(DroidDetailsWithFragmentQuery.Data.Hero.AsDroid.self),
              ObjectIdentifier(DroidDetails.self)
            ]
          ))
        }
      }
    }
  }
}
